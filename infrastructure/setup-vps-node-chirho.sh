#!/bin/bash
# For God so loved the world that he gave his only begotten Son,
# that whosoever believeth in him should not perish, but have everlasting life.
# John 3:16 (KJV)
#
# Sonshine Academy - VPS Node Setup Script
# This script provisions a new Hetzner Ubuntu VPS to join the terminal cluster
#
# Usage: ./setup-vps-node-chirho.sh [DOMAIN] [ADMIN_EMAIL]
# Example: ./setup-vps-node-chirho.sh terminal.sonshine.academy admin@sonshine.academy

set -euo pipefail

# === Configuration ===
DOMAIN="${1:-terminal.sonshine.academy}"
ADMIN_EMAIL="${2:-admin@sonshine.academy}"
NODE_ID="${NODE_ID:-$(hostname)}"
SONSHINE_API_ENDPOINT="${SONSHINE_API_ENDPOINT:-https://academy.sonshine.org/api}"
SONSHINE_API_KEY="${SONSHINE_API_KEY:-}"

echo "=============================================="
echo "  ☀️ Sonshine Academy VPS Node Setup"
echo "=============================================="
echo "  Node ID: $NODE_ID"
echo "  Domain: $DOMAIN"
echo "  Admin Email: $ADMIN_EMAIL"
echo "=============================================="
echo ""

# === 1. System Updates ===
echo "[1/12] Updating system packages..."
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# === 2. Install Essential Packages ===
echo "[2/12] Installing essential packages..."
DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl wget git vim \
    docker.io docker-compose-plugin \
    certbot \
    htop iotop \
    fail2ban ufw \
    jq \
    sqlite3

# === 3. Configure Docker ===
echo "[3/12] Configuring Docker..."
systemctl enable docker
systemctl start docker

# Create Docker network for containers
docker network create --driver bridge sonshine-net-chirho 2>/dev/null || true

# Configure Docker daemon
cat > /etc/docker/daemon.json << 'EOF'
{
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "10m",
    "max-file": "3"
  },
  "default-ulimits": {
    "nofile": {
      "Name": "nofile",
      "Hard": 65536,
      "Soft": 65536
    }
  }
}
EOF
systemctl restart docker

# === 4. Create Directory Structure ===
echo "[4/12] Creating directory structure..."
mkdir -p /opt/sonshine-chirho/{traefik/config,containers,scripts,data,payloads}

# === 5. Create Traefik Configuration ===
echo "[5/12] Configuring Traefik reverse proxy..."

cat > /opt/sonshine-chirho/traefik/traefik.yml << EOF
api:
  dashboard: true

entryPoints:
  web:
    address: ":80"
    http:
      redirections:
        entryPoint:
          to: websecure
          scheme: https
  websecure:
    address: ":443"

providers:
  docker:
    exposedByDefault: false
    network: sonshine-net-chirho
  file:
    directory: /config
    watch: true

certificatesResolvers:
  letsencrypt:
    acme:
      email: ${ADMIN_EMAIL}
      storage: /letsencrypt/acme.json
      httpChallenge:
        entryPoint: web
EOF

# Create dynamic config for the admin dashboard
cat > /opt/sonshine-chirho/traefik/config/dashboard.yml << EOF
http:
  routers:
    dashboard:
      rule: "Host(\`traefik.${DOMAIN}\`)"
      service: api@internal
      tls:
        certResolver: letsencrypt
      middlewares:
        - dashboard-auth

  middlewares:
    dashboard-auth:
      basicAuth:
        users:
          # Generate with: htpasswd -nb admin <password>
          - "admin:\$apr1\$ruca84Hq\$mbjdMZBAG.KWn7vfN/SNK/"
EOF

# Create Traefik docker-compose
cat > /opt/sonshine-chirho/traefik/docker-compose.yml << EOF
version: '3.8'

services:
  traefik:
    image: traefik:v3.0
    container_name: traefik-chirho
    restart: unless-stopped
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - ./traefik.yml:/traefik.yml:ro
      - ./config:/config:ro
      - ./letsencrypt:/letsencrypt
    networks:
      - sonshine-net-chirho

networks:
  sonshine-net-chirho:
    external: true
EOF

# Create letsencrypt directory and file
mkdir -p /opt/sonshine-chirho/traefik/letsencrypt
touch /opt/sonshine-chirho/traefik/letsencrypt/acme.json
chmod 600 /opt/sonshine-chirho/traefik/letsencrypt/acme.json

# === 6. Build Student Container Image ===
echo "[6/12] Building student container image..."

cat > /opt/sonshine-chirho/containers/Dockerfile << 'EOF'
# Sonshine Academy Student Container
# John 3:16 - For God so loved the world...
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV NODE_VERSION=20
ENV BUN_VERSION=latest

# Install base packages
RUN apt-get update && apt-get install -y \
    curl wget git vim nano \
    build-essential \
    python3 python3-pip \
    sqlite3 \
    tree htop \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
    && apt-get install -y nodejs

# Install Bun
RUN curl -fsSL https://bun.sh/install | bash
ENV PATH="/root/.bun/bin:${PATH}"

# Install ttyd (web terminal)
RUN curl -sLo /usr/local/bin/ttyd \
    https://github.com/tsl0922/ttyd/releases/download/1.7.4/ttyd.x86_64 \
    && chmod +x /usr/local/bin/ttyd

# Create student user
RUN useradd -m -s /bin/bash student \
    && echo "student:sonshine" | chpasswd \
    && usermod -aG sudo student

# Copy Bun to student user
RUN cp -r /root/.bun /home/student/.bun \
    && chown -R student:student /home/student/.bun

# Setup environment for student
USER student
WORKDIR /home/student

# Add Bun to PATH for student
ENV PATH="/home/student/.bun/bin:/usr/local/bin:${PATH}"

# Create directories
RUN mkdir -p Downloads/cp-chirho projects

# Welcome message
RUN echo '' >> ~/.bashrc \
    && echo '# Sonshine Academy Environment' >> ~/.bashrc \
    && echo 'echo ""' >> ~/.bashrc \
    && echo 'echo "☀️ Welcome to Sonshine Academy!"' >> ~/.bashrc \
    && echo 'echo "May God bless your coding journey."' >> ~/.bashrc \
    && echo 'echo ""' >> ~/.bashrc \
    && echo 'echo "📚 Your workspace: ~/Downloads/cp-chirho"' >> ~/.bashrc \
    && echo 'echo "💻 Type \"help-chirho\" for available commands"' >> ~/.bashrc \
    && echo 'echo ""' >> ~/.bashrc

# Create help script
RUN echo '#!/bin/bash' > ~/help-chirho \
    && echo 'echo ""' >> ~/help-chirho \
    && echo 'echo "☀️ Sonshine Academy Commands"' >> ~/help-chirho \
    && echo 'echo "=============================="' >> ~/help-chirho \
    && echo 'echo ""' >> ~/help-chirho \
    && echo 'echo "  node     - Run JavaScript files"' >> ~/help-chirho \
    && echo 'echo "  bun      - Fast JavaScript runtime"' >> ~/help-chirho \
    && echo 'echo "  npm      - Node package manager"' >> ~/help-chirho \
    && echo 'echo "  git      - Version control"' >> ~/help-chirho \
    && echo 'echo "  sqlite3  - Database CLI"' >> ~/help-chirho \
    && echo 'echo ""' >> ~/help-chirho \
    && echo 'echo "📂 Your files are in: ~/Downloads/cp-chirho"' >> ~/help-chirho \
    && echo 'echo ""' >> ~/help-chirho \
    && chmod +x ~/help-chirho

EXPOSE 7681

CMD ["ttyd", "-W", "-p", "7681", "-t", "fontSize=16", "-t", "theme={\"background\":\"#1e293b\"}", "bash"]
EOF

docker build -t sonshine-student-chirho:latest /opt/sonshine-chirho/containers/

# === 7. Create Container Management Scripts ===
echo "[7/12] Creating container management scripts..."

cat > /opt/sonshine-chirho/scripts/create-container-chirho.sh << 'EOF'
#!/bin/bash
# Create a new student container
# Usage: ./create-container-chirho.sh <USER_ID> <PORT> [DOMAIN]

USER_ID=$1
PORT=$2
DOMAIN=${3:-terminal.sonshine.academy}

if [ -z "$USER_ID" ] || [ -z "$PORT" ]; then
    echo "Usage: $0 <USER_ID> <PORT> [DOMAIN]"
    exit 1
fi

CONTAINER_NAME="student-${USER_ID}-chirho"

# Generate a random token for auth
TOKEN=$(openssl rand -hex 16)

docker run -d \
    --name "$CONTAINER_NAME" \
    --network sonshine-net-chirho \
    --memory="512m" \
    --cpus="0.5" \
    --restart unless-stopped \
    --label "traefik.enable=true" \
    --label "traefik.http.routers.${CONTAINER_NAME}.rule=Host(\`${USER_ID}.${DOMAIN}\`)" \
    --label "traefik.http.routers.${CONTAINER_NAME}.tls=true" \
    --label "traefik.http.routers.${CONTAINER_NAME}.tls.certresolver=letsencrypt" \
    --label "traefik.http.services.${CONTAINER_NAME}.loadbalancer.server.port=7681" \
    -e STUDENT_ID="$USER_ID" \
    -e AUTH_TOKEN="$TOKEN" \
    sonshine-student-chirho:latest

echo "Container created: $CONTAINER_NAME"
echo "URL: https://${USER_ID}.${DOMAIN}"
echo "Token: $TOKEN"
EOF
chmod +x /opt/sonshine-chirho/scripts/create-container-chirho.sh

cat > /opt/sonshine-chirho/scripts/stop-container-chirho.sh << 'EOF'
#!/bin/bash
# Stop a student container
USER_ID=$1
CONTAINER_NAME="student-${USER_ID}-chirho"
docker stop "$CONTAINER_NAME" 2>/dev/null && echo "Stopped: $CONTAINER_NAME"
EOF
chmod +x /opt/sonshine-chirho/scripts/stop-container-chirho.sh

cat > /opt/sonshine-chirho/scripts/start-container-chirho.sh << 'EOF'
#!/bin/bash
# Start a student container
USER_ID=$1
CONTAINER_NAME="student-${USER_ID}-chirho"
docker start "$CONTAINER_NAME" 2>/dev/null && echo "Started: $CONTAINER_NAME"
EOF
chmod +x /opt/sonshine-chirho/scripts/start-container-chirho.sh

cat > /opt/sonshine-chirho/scripts/delete-container-chirho.sh << 'EOF'
#!/bin/bash
# Delete a student container
USER_ID=$1
CONTAINER_NAME="student-${USER_ID}-chirho"
docker rm -f "$CONTAINER_NAME" 2>/dev/null && echo "Deleted: $CONTAINER_NAME"
EOF
chmod +x /opt/sonshine-chirho/scripts/delete-container-chirho.sh

cat > /opt/sonshine-chirho/scripts/list-containers-chirho.sh << 'EOF'
#!/bin/bash
# List all student containers
docker ps -a --filter "name=student-" --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
EOF
chmod +x /opt/sonshine-chirho/scripts/list-containers-chirho.sh

# Create symlinks in /usr/local/bin
ln -sf /opt/sonshine-chirho/scripts/create-container-chirho.sh /usr/local/bin/sonshine-create
ln -sf /opt/sonshine-chirho/scripts/stop-container-chirho.sh /usr/local/bin/sonshine-stop
ln -sf /opt/sonshine-chirho/scripts/start-container-chirho.sh /usr/local/bin/sonshine-start
ln -sf /opt/sonshine-chirho/scripts/delete-container-chirho.sh /usr/local/bin/sonshine-delete
ln -sf /opt/sonshine-chirho/scripts/list-containers-chirho.sh /usr/local/bin/sonshine-list

# === 8. Configure Firewall ===
echo "[8/12] Configuring firewall..."
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow 80/tcp
ufw allow 443/tcp
ufw --force enable

# === 9. Configure Fail2ban ===
echo "[9/12] Configuring fail2ban..."
systemctl enable fail2ban
systemctl start fail2ban

# === 10. Create Cleanup Cron Job ===
echo "[10/12] Creating cleanup cron job..."

cat > /opt/sonshine-chirho/scripts/cleanup-idle-chirho.sh << 'EOF'
#!/bin/bash
# Stop containers that have been idle for more than 30 minutes
# This runs every 5 minutes via cron

IDLE_THRESHOLD=1800  # 30 minutes in seconds

for container in $(docker ps --filter "name=student-" -q); do
    CONTAINER_NAME=$(docker inspect --format '{{.Name}}' "$container" | sed 's/\///')

    # Get last activity from container logs
    LAST_LOG=$(docker logs --tail 1 --timestamps "$container" 2>/dev/null | cut -d' ' -f1)

    if [ -n "$LAST_LOG" ]; then
        LAST_EPOCH=$(date -d "$LAST_LOG" +%s 2>/dev/null || echo 0)
        NOW_EPOCH=$(date +%s)
        IDLE_TIME=$((NOW_EPOCH - LAST_EPOCH))

        if [ $IDLE_TIME -gt $IDLE_THRESHOLD ]; then
            echo "$(date): Stopping idle container: $CONTAINER_NAME (idle for ${IDLE_TIME}s)"
            docker stop "$container"
        fi
    fi
done
EOF
chmod +x /opt/sonshine-chirho/scripts/cleanup-idle-chirho.sh

# Add cron job
(crontab -l 2>/dev/null | grep -v cleanup-idle-chirho; echo "*/5 * * * * /opt/sonshine-chirho/scripts/cleanup-idle-chirho.sh >> /var/log/sonshine-cleanup.log 2>&1") | crontab -

# === 11. Start Traefik ===
echo "[11/12] Starting Traefik..."
cd /opt/sonshine-chirho/traefik
docker compose up -d

# === 12. Register with Platform (Optional) ===
echo "[12/12] Finalizing setup..."

# Create node info file
cat > /opt/sonshine-chirho/node-info.json << EOF
{
  "nodeId": "$NODE_ID",
  "hostname": "$(hostname)",
  "ipAddress": "$(curl -s ifconfig.me)",
  "domain": "$DOMAIN",
  "setupDate": "$(date -Iseconds)",
  "dockerVersion": "$(docker --version)",
  "maxContainers": 20
}
EOF

echo ""
echo "=============================================="
echo "  ☀️ Sonshine Academy VPS Node Setup Complete!"
echo "=============================================="
echo ""
echo "  Node ID: $NODE_ID"
echo "  IP: $(curl -s ifconfig.me)"
echo "  Domain: $DOMAIN"
echo ""
echo "  Traefik Dashboard: https://traefik.$DOMAIN"
echo ""
echo "  Commands available:"
echo "    sonshine-create <user_id> <port>  - Create container"
echo "    sonshine-start <user_id>          - Start container"
echo "    sonshine-stop <user_id>           - Stop container"
echo "    sonshine-delete <user_id>         - Delete container"
echo "    sonshine-list                     - List all containers"
echo ""
echo "  Node info saved to: /opt/sonshine-chirho/node-info.json"
echo ""
echo "  May God bless this server and all who learn here!"
echo "=============================================="
