# Sonshine Academy Student Container
# For God so loved the world that he gave his only begotten Son,
# that whosoever believeth in him should not perish, but have everlasting life.
# John 3:16 (KJV)

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

# Copy payloads if present
COPY payloads/ /home/student/payloads/

# Setup environment for student
USER student
WORKDIR /home/student

# Add paths
ENV PATH="/home/student/.bun/bin:/usr/local/bin:${PATH}"

# Create directories
RUN mkdir -p Downloads/cp-chirho projects

# Set ownership of payloads
RUN if [ -d /home/student/payloads ]; then chmod -R +x /home/student/payloads/*.sh 2>/dev/null || true; fi

# Welcome message and aliases
RUN echo '' >> ~/.bashrc \
    && echo '# ============================================' >> ~/.bashrc \
    && echo '# Sonshine Academy Environment' >> ~/.bashrc \
    && echo '# John 3:16 - For God so loved the world...' >> ~/.bashrc \
    && echo '# ============================================' >> ~/.bashrc \
    && echo '' >> ~/.bashrc \
    && echo 'echo ""' >> ~/.bashrc \
    && echo 'echo "☀️ Welcome to Sonshine Academy!"' >> ~/.bashrc \
    && echo 'echo "May God bless your coding journey."' >> ~/.bashrc \
    && echo 'echo ""' >> ~/.bashrc \
    && echo 'echo "📚 Your workspace: ~/Downloads/cp-chirho"' >> ~/.bashrc \
    && echo 'echo "🎯 Run payloads from: ~/payloads"' >> ~/.bashrc \
    && echo 'echo "💻 Type \"help-chirho\" for commands"' >> ~/.bashrc \
    && echo 'echo ""' >> ~/.bashrc \
    && echo '' >> ~/.bashrc \
    && echo '# Aliases' >> ~/.bashrc \
    && echo 'alias help-chirho="cat ~/help-chirho.txt"' >> ~/.bashrc \
    && echo 'alias workspace="cd ~/Downloads/cp-chirho"' >> ~/.bashrc \
    && echo 'alias projects="cd ~/projects"' >> ~/.bashrc \
    && echo 'alias payloads="cd ~/payloads && ls -la"' >> ~/.bashrc

# Create help file
RUN echo '☀️ Sonshine Academy Commands' > ~/help-chirho.txt \
    && echo '==============================' >> ~/help-chirho.txt \
    && echo '' >> ~/help-chirho.txt \
    && echo 'Navigation:' >> ~/help-chirho.txt \
    && echo '  workspace   - Go to ~/Downloads/cp-chirho' >> ~/help-chirho.txt \
    && echo '  projects    - Go to ~/projects' >> ~/help-chirho.txt \
    && echo '  payloads    - List available payloads' >> ~/help-chirho.txt \
    && echo '' >> ~/help-chirho.txt \
    && echo 'Development:' >> ~/help-chirho.txt \
    && echo '  node <file> - Run JavaScript files' >> ~/help-chirho.txt \
    && echo '  bun <file>  - Fast JavaScript runtime' >> ~/help-chirho.txt \
    && echo '  npm         - Node package manager' >> ~/help-chirho.txt \
    && echo '  git         - Version control' >> ~/help-chirho.txt \
    && echo '  sqlite3     - Database CLI' >> ~/help-chirho.txt \
    && echo '' >> ~/help-chirho.txt \
    && echo 'Run a payload:' >> ~/help-chirho.txt \
    && echo '  bash ~/payloads/payload-weekXX-sessionN-chirho.sh' >> ~/help-chirho.txt \
    && echo '' >> ~/help-chirho.txt \
    && echo '"Train up a child in the way he should go..."' >> ~/help-chirho.txt \
    && echo '  - Proverbs 22:6' >> ~/help-chirho.txt

EXPOSE 7681

# Default command - start ttyd terminal
CMD ["ttyd", "-W", "-p", "7681", "-t", "fontSize=16", "-t", "theme={\"background\":\"#1e293b\"}", "bash"]
