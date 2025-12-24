-- For God so loved the world that he gave his only begotten Son,
-- that whosoever believeth in him should not perish, but have everlasting life.
-- John 3:16 (KJV)

-- Payload Import Script - Generated 2025-12-24T03:07:56.895Z
-- Total payloads: 50

BEGIN TRANSACTION;

-- Payload: Week 2 Session 1 (payload-week02-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'uCVTQMwFMERkPHjSpcTBR',
  'Week 2 Session 1',
  'Payload for Chi Rho: Week 02, Session 1 (v2)',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.

# Payload for Chi Rho: Week 02, Session 1 (v2)
# This script creates a directory and boilerplate HTML file, but only if the file doesn''t already exist.

# --- Output initial messages ---
echo "Payload for Week 02 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
# Define the target directory and file path using the $HOME variable for reliability.
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-02-chirho/session-1-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
# First, ensure the directory exists. The -p flag is safe to run multiple times.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the file does NOT exist before creating it.
if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the simple boilerplate HTML5 file using a ''here document''.
    cat << EOF > "$TARGET_FILE_CHIRHO"
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hallelujah - Sonshine Week 2 Session 1 Interactive Page</title>

        <!-- The <style> block contains our CSS for styling the page. -->
        <style>
            body {
                font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
                text-align: center;
                padding: 20px;
                margin-top: 50px;
                /* A smooth transition for the background color change */
                transition: background-color 0.7s ease;
            }

            #main-heading-chirho {
                font-size: 24px;
                min-height: 50px; /* Gives space so the layout doesn''t jump when text changes */
            }

            #action-button-chirho {
                font-size: 18px;
                padding: 12px 24px;
                border-radius: 8px;
                border: 2px solid rgb(51, 51, 51);
                cursor: pointer;
                background-color: rgb(255, 255, 255);
                font-weight: bold;
                /* Added a subtle drop shadow for depth */
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
            }

            #action-button-chirho:hover {
                background-color: rgb(240, 240, 240);
            }
        </style>

        <!-- The <script> block contains our JavaScript for interactivity. -->
        <script>
            // For God so loved the world... (John 3:16)

            // This function runs when the button is clicked.
            function performActionChirho() {
                // 1. Find the HTML element with our ID.
                const headingElementChirho = document.getElementById("main-heading-chirho");

                // 2. Change the text inside that element to a joyful message.
                headingElementChirho.textContent = "Praise the LORD for colors!";

                // 3. Generate three random numbers, one for each color component (Red, Green, Blue).
                // Math.random() gives a number between 0 and 1.
                // We multiply by 256 and use Math.floor() to get a whole number between 0 and 255.
                const redChirho = Math.floor(Math.random() * 256);
                const greenChirho = Math.floor(Math.random() * 256);
                const blueChirho = Math.floor(Math.random() * 256);

                // 4. Construct a CSS color string using traditional string concatenation.
                const randomColorChirho = "rgb(" + redChirho + ", " + greenChirho + ", " + blueChirho + ")";

                // 5. Set the background color of the page to our new random color.
                document.body.style.backgroundColor = randomColorChirho;
            }
        </script>
    </head>
    <body>

        <h1 id="main-heading-chirho">Hallelujah, Welcome Class!</h1>

        <p>Click the button below to change the background color.</p>

        <!-- The onclick attribute runs our JavaScript function. -->
        <button id="action-button-chirho" onclick="performActionChirho()">Change Color!</button>

    </body>
    </html>

EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $TARGET_FILE_CHIRHO"

else
    # If the file already exists, print a different message and do nothing else.
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week02-session1-chirho.sh',
  21,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 2 Session 2 (payload-week02-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '0om7W6HGvTsJBP4cuMagD',
  'Week 2 Session 2',
  'Payload for Sonshine 2025 Chi Rho Class: Week 02, Session 2',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.
# Payload for Sonshine 2025 Chi Rho Class: Week 02, Session 2
# This script creates a directory and an interactive HTML file with CSS and JavaScript.

# --- Output initial messages ---
echo "Payload for Week 02 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-02-chirho/session-2-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
# First, ensure the directory exists. The -p flag is safe to run multiple times.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the file does NOT exist before creating it.
if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the interactive HTML file using a ''here document''.
    cat << EOF > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Week 02 Session 2 Chi Rho Interactive Page</title>

    <!-- We are adding the Tone.js library to generate sound -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>

    <!-- The <style> block contains our CSS for styling the page. -->
    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            text-align: center;
            padding: 20px;
            margin-top: 50px;
            /* A smooth transition for the background color change */
            transition: background-color 0.7s ease;
        }

        #main-heading-chirho {
            font-size: 24px;
            min-height: 50px; /* Gives space so the layout doesn''t jump when text changes */
        }

        #action-button-chirho {
            font-size: 18px;
            padding: 12px 24px;
            border-radius: 8px;
            border: 2px solid rgb(51, 51, 51);
            cursor: pointer;
            background-color: rgb(255, 255, 255);
            font-weight: bold;
            /* Added a subtle drop shadow for depth */
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }

        #action-button-chirho:hover {
            background-color: rgb(240, 240, 240);
        }
    </style>

    <!-- The <script> block contains our JavaScript for interactivity. -->
    <script>
        // For God so loved the world... (John 3:16)

        // --- Sound Setup ---
        // 1. Create a "synthesizer" object that can play musical notes.
        const synthChirho = new Tone.Synth().toDestination();

        // 2. Create an array of 7 simple, uplifting melodies.
        //    Each melody is an array of musical notes.
        const melodiesChirho = [
            [''G4'', ''C5'', ''C5''],
            [''C5'', ''D5'', ''E5''],
            [''E5'', ''D5'', ''C5''],
            [''G4'', ''A4'', ''B4'', ''C5''],
            [''C5'', ''B4'', ''A4'', ''G4''],
            [''C5'', ''E5'', ''G5''],
            [''G4'', ''B4'', ''D5'']
        ];


        // This function runs when the button is clicked.
        function performActionChirho() {
            // --- Visual Changes (from before) ---
            const headingElementChirho = document.getElementById("main-heading-chirho");
            headingElementChirho.textContent = "Praise the LORD for colors and sounds!";

            const redChirho = Math.floor(Math.random() * 256);
            const greenChirho = Math.floor(Math.random() * 256);
            const blueChirho = Math.floor(Math.random() * 256);
            const randomColorChirho = "rgb(" + redChirho + ", " + greenChirho + ", " + blueChirho + ")";
            document.body.style.backgroundColor = randomColorChirho;

            // --- Audio Playback ---
            // 1. Ensure the audio is allowed to start (a browser requirement).
            if (Tone.context.state !== ''running'') {
                Tone.start();
            }

            // 2. Pick a random melody from our array of 7 melodies.
            const randomIndexChirho = Math.floor(Math.random() * melodiesChirho.length);
            const melodyToPlayChirho = melodiesChirho[randomIndexChirho];

            // 3. Play the notes of the chosen melody one after another.
            const nowChirho = Tone.now();
            melodyToPlayChirho.forEach((noteChirho, indexChirho) => {
                // Schedule each note to play with a small delay after the previous one.
                synthChirho.triggerAttackRelease(noteChirho, "8n", nowChirho + indexChirho * 0.2);
            });
        }
    </script>
</head>
<body>

    <h1 id="main-heading-chirho">Hallelujah, Sonshine 2025 Programming Chi Rho Class!</h1>

    <p>Click the button to change the color and hear a sound.</p>

    <!-- The onclick attribute runs our JavaScript function. -->
    <button id="action-button-chirho" onclick="performActionChirho()">Change Color & Play Sound!</button>

</body>
</html>
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $TARGET_FILE_CHIRHO"

else
    # If the file already exists, print a different message.
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week02-session2-chirho.sh',
  22,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 2 Session 3 (payload-week02-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'dqhVDvJr9oFPaCbzd-blU',
  'Week 2 Session 3',
  'Payload for Chi Rho: Week 02, Session 3',
  '1.0.0',
  '#!/bin/bash

# Payload for Chi Rho: Week 02, Session 3
# This script creates an interactive HTML page that demonstrates function parameters, IF statements, and sound.

# --- Output initial messages ---
echo "Payload for Week 02 Session 3 Chi Rho"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-02-chirho/session-3-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
# First, ensure the directory exists. The -p flag is safe to run multiple times.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the file does NOT exist before creating it.
if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the interactive HTML file using a ''here document''.
    cat << EOF > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class Week 2 Session 3 Chi Rho</title>

    <!-- We are adding the Tone.js library to generate sound -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>

    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: rgb(235, 245, 255); /* Light blue background */
        }

        #cross-container-chirho {
            width: 200px;
            height: 200px;
            border: 3px solid rgb(25, 50, 100); /* Darker border */
            background-color: rgb(255, 255, 255);
            margin-bottom: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #symbol-chirho {
            font-size: 150px;
            color: rgb(50, 50, 50);
            line-height: 1; /* Helps with vertical centering */
        }

        .button-container-chirho {
            display: flex;
            gap: 20px; /* Adds space between the buttons */
        }

        .rotate-button-chirho {
            font-size: 18px;
            padding: 10px 20px;
            border-radius: 8px;
            border: 2px solid rgb(25, 50, 100);
            background-color: rgb(80, 120, 180); /* Button color */
            color: white;
            cursor: pointer;
            font-weight: bold;
        }
    </style>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        // --- Global Variables ---
        let currentRotationChirho = 0;
        let rotationIntervalChirho = null; // This will hold our timer

        // --- Sound Setup ---
        const synthChirho = new Tone.Synth().toDestination();
        const ascendingNotesChirho = [''C4'', ''E4'', ''G4''];
        const descendingNotesChirho = [''G4'', ''E4'', ''C4''];
        let noteIndexChirho = 0; // To keep track of which note to play

        // This function STARTS the rotation and sound.
        function startRotationChirho(directionParameterChirho) {
            let rotationAmountChirho;
            let notesToPlayChirho;

            // --- The IF Statement ---
            // This decides the direction of rotation AND which notes to play.
            if (directionParameterChirho === ''right'') {
                rotationAmountChirho = 2;
                notesToPlayChirho = ascendingNotesChirho;
            } else {
                rotationAmountChirho = -2;
                notesToPlayChirho = descendingNotesChirho;
            }

            // Ensure the audio is allowed to start (a browser requirement on first click).
            if (Tone.context.state !== ''running'') {
                Tone.start();
            }

            // setInterval runs a function repeatedly.
            rotationIntervalChirho = setInterval(function() {
                // --- Visual Rotation ---
                currentRotationChirho += rotationAmountChirho;
                const symbolContainerElementChirho = document.getElementById(''cross-container-chirho'');
                symbolContainerElementChirho.style.transform = ''rotate('' + currentRotationChirho + ''deg)'';

                // --- Sound Playback ---
                // Get the current note from the selected array.
                const noteToPlay = notesToPlayChirho[noteIndexChirho];
                // Play the note. "16n" means it lasts for a sixteenth note.
                synthChirho.triggerAttackRelease(noteToPlay, "16n");

                // Move to the next note for the next interval, looping back to the start.
                noteIndexChirho = (noteIndexChirho + 1) % notesToPlayChirho.length;

            }, 75); // Run this loop every 75 milliseconds
        }

        // This function STOPS the rotation and sound.
        function stopRotationChirho() {
            // clearInterval stops the timer we created.
            clearInterval(rotationIntervalChirho);
            noteIndexChirho = 0; // Reset note index for next time
        }
    </script>
</head>
<body>

    <div id="cross-container-chirho">
        <div id="symbol-chirho">☧</div>
    </div>

    <div class="button-container-chirho">
        <button
            class="rotate-button-chirho"
            onmousedown="startRotationChirho(''left'')"
            onmouseup="stopRotationChirho()"
            onmouseleave="stopRotationChirho()">Rotate Left</button>

        <button
            class="rotate-button-chirho"
            onmousedown="startRotationChirho(''right'')"
            onmouseup="stopRotationChirho()"
            onmouseleave="stopRotationChirho()">Rotate Right</button>
    </div>

</body>
</html>
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $TARGET_FILE_CHIRHO. Hallelujah!"

else
    # If the file already exists, print a different message.
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week02-session3-chirho.sh',
  23,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 3 Session 1 (payload-week03-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'DczlPUI_kJoqiIpk-l4At',
  'Week 3 Session 1',
  'Payload for Sonshine Programming Class Chi Rho: Week 03, Session 1',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.
#
# Payload for Sonshine Programming Class Chi Rho: Week 03, Session 1
# This script creates the "Loaves and Fishes" interactive HTML page.

# --- Output initial messages ---
echo "Payload for Week 03 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-03-chirho/session-1-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
# First, ensure the directory exists. The -p flag is safe to run multiple times.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the file does NOT exist before creating it.
if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the interactive HTML file using a ''here document''.
    cat << EOF > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Loaves and Fishes</title>

    <!-- We are adding the Tone.js library to generate sound -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>

    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            text-align: center;
            background-color: #333;
            margin: 0;
            padding: 20px;
            color: white;
        }

        h1 {
            color: yellow;
        }

        #miracle-area-chirho {
            width: 90%;
            max-width: 800px;
            height: 60vh;
            margin: 20px auto;
            border: 3px solid rgb(25, 50, 100);
            background-color: rgb(255, 255, 255);
            /* This is VERY important. It makes where this div is the ''world'' location for our new elements
               (so (0, 0) will be at the start of this element and not the whole page). */
            position: relative;
            overflow: hidden; /* Hides anything that might accidentally go outside the box */
        }

        /* This style will apply to our starting items AND the new ones we create */
        .food-item-chirho {
            font-size: 40px;
            cursor: pointer;
            /* This allows us to place elements anywhere inside the ''miracle-area'' */
            position: absolute;
            /* user-select: none prevents the emoji which is actually text from being highlighted on click */
            user-select: none;
        }
    </style>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        // --- Sound Setup ---
        // We will create a synth specifically for our "bubble" or "pop" sound.
        const popSynthChirho = new Tone.Synth().toDestination();

        // This is our main function. It takes a parameter to know WHAT to multiply.
        function multiplyChirho(elementTypeParameterChirho) {

            // --- Sound Playback ---
            // Ensure the audio is allowed to start (a browser requirement).
            if (Tone.context.state !== ''running'') {
                Tone.start();
            }

            // Use an IF/ELSE IF statement to play a different sound for each element.
            if (elementTypeParameterChirho === ''loaf'') {
                // A high note for the bread''s "pop" sound.
                popSynthChirho.triggerAttackRelease("C6", "32n");
            } else if (elementTypeParameterChirho === ''fish'') {
                // A lower note for the fish''s "plop" sound.
                popSynthChirho.triggerAttackRelease("G5", "32n");
            } else {
                // A gentle chime for the Bible.
                popSynthChirho.triggerAttackRelease("E6", "16n");
            }

            // --- Element Creation ---
            // 1. Create a brand new, empty <div> element in the browser''s memory.
            const newElementChirho = document.createElement(''div'');

            // 2. Use an IF/ELSE IF statement to decide what emoji to put inside our new div.
            if (elementTypeParameterChirho === ''loaf'') {
                newElementChirho.textContent = ''🍞'';
            } else if (elementTypeParameterChirho === ''fish'') {
                newElementChirho.textContent = ''🐟'';
            } else {
                newElementChirho.textContent = ''📖'';
            }

            // 3. Give our new div the same CSS class as our starting items.
            newElementChirho.className = ''food-item-chirho'';
            // Also, make the new element clickable so it can also be multiplied!
            newElementChirho.setAttribute(''onclick'', "multiplyChirho(''" + elementTypeParameterChirho + "'')");

            // 4. Find the container area on the page.
            const miracleAreaChirho = document.getElementById(''miracle-area-chirho'');

            // 5. Calculate a random position inside the miracle area.
            // We subtract 50 so the items don''t get placed right at the edge.
            const randomXChirho = Math.random() * (miracleAreaChirho.clientWidth - 50);
            const randomYChirho = Math.random() * (miracleAreaChirho.clientHeight - 50);

            newElementChirho.style.left = randomXChirho + ''px'';
            newElementChirho.style.top = randomYChirho + ''px'';

            // 6. This is the miracle! Add the new element we created to the page.
            miracleAreaChirho.appendChild(newElementChirho);
        }
    </script>
</head>
<body>

    <h1>Multiply the Loaves and Fishes</h1>
    <p>And make sure to share the Word, we''ve got lots of hungry people out there!</p>

    <div id="miracle-area-chirho">
        <!-- These are our three starting items -->
        <div class="food-item-chirho" onclick="multiplyChirho(''loaf'')" style="left: 35%; top: 45%;">🍞</div>
        <div class="food-item-chirho" onclick="multiplyChirho(''fish'')" style="left: 60%; top: 45%;">🐟</div>
        <div class="food-item-chirho" onclick="multiplyChirho(''bible'')" style="left: 47.5%; top: 65%;">📖</div>
    </div>

</body>
</html>
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $TARGET_FILE_CHIRHO HALLELUJAH"

else
    # If the file already exists, print a different message.
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week03-session1-chirho.sh',
  31,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 3 Session 2 (payload-week03-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'QzL4HuZzZsnJ54NT-Ugsh',
  'Week 3 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 03, Session 2',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 03, Session 2
# This script creates the "Random Verse" interactive HTML page.

# --- Output initial messages ---
echo "Payload for Week 03 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-03-chirho/session-2-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
# First, ensure the directory exists. The -p flag is safe to run multiple times.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the file does NOT exist before creating it.
if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the interactive HTML file using a ''here document''.
    cat << EOF > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Random Verse</title>

    <!-- We are adding the Tone.js library to generate sound -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>

    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            text-align: center;
            background-color: rgb(20, 30, 70); /* More lively deep blue background */
            margin: 0;
            padding: 20px;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        #verse-container-chirho {
            width: 90%;
            max-width: 500px;
            min-height: 250px; /* Ensures the page doesn''t jump when the card is hidden */
            position: relative;
            margin-bottom: 20px;
        }

        #verse-card-chirho {
            background-color: white;
            color: #333;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            position: absolute;
            width: 100%;
            /* Start hidden */
            visibility: hidden;
            box-sizing: border-box; /* Ensures padding is included in the width */
        }

        /* CSS Animations */
        @keyframes pop-in {
            0% { transform: scale(0.5); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }

        @keyframes pop-out {
            0% { transform: scale(1); opacity: 1; }
            100% { transform: scale(0.5); opacity: 0; }
        }

        .animate-in-chirho {
            visibility: visible;
            animation: pop-in 0.5s forwards;
        }

        .animate-out-chirho {
            visibility: visible;
            animation: pop-out 0.5s forwards;
        }

        #verse-citation-chirho {
            font-weight: bold;
            font-size: 1.2em;
            margin-bottom: 10px;
        }

        #verse-content-chirho {
            font-size: 1em;
            line-height: 1.6;
        }

        #verse-button-chirho {
            font-size: 18px;
            padding: 12px 24px;
            border-radius: 8px;
            border: 2px solid rgb(255, 220, 0); /* Brighter yellow */
            background-color: rgb(40, 60, 120); /* Brighter button blue */
            color: rgb(255, 220, 0);
            cursor: pointer;
            font-weight: bold;
        }

        #verse-button-chirho:disabled {
            cursor: not-allowed;
            opacity: 0.5;
        }
    </style>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        // --- Sound Setup ---
        const synthChirho = new Tone.Synth().toDestination();
        const descendingScaleChirho = [''G5'',  ''E5'', ''D5'',  ''B4'', ''A4''];
        const ascendingScaleChirho = [''G4'',  ''C5'', ''E5'',  ''G5'', ''A5''];

        // --- Data Setup ---
        const versesChirho = [
            { citationChirho: "Proverbs 3:5", contentChirho: "Trust in the LORD with all thine heart; and lean not unto thine own understanding." },
            { citationChirho: "Philippians 4:13", contentChirho: "I can do all things through Christ which strengtheneth me." },
            { citationChirho: "John 14:6", contentChirho: "Jesus saith unto him, I am the way, the truth, and the life: no man cometh unto the Father, but by me." },
            { citationChirho: "Romans 8:28", contentChirho: "And we know that all things work together for good to them that love God, to them who are the called according to his purpose." },
            { citationChirho: "Joshua 1:9", contentChirho: "Have not I commanded thee? Be strong and of a good courage; be not afraid, neither be thou dismayed: for the LORD thy God is with thee whithersoever thou goest." },
            { citationChirho: "Isaiah 41:10", contentChirho: "Fear thou not; for I am with thee: be not dismayed; for I am thy God: I will strengthen thee; yea, I will help thee; yea, I will uphold thee with the right hand of my righteousness." },
            { citationChirho: "Psalm 46:1", contentChirho: "God is our refuge and strength, a very present help in trouble." },
            { citationChirho: "1 Corinthians 10:13", contentChirho: "There hath no temptation taken you but such as is common to man: but God is faithful, who will not suffer you to be tempted above that ye are able; but will with the temptation also make a way to escape, that ye may be able to bear it." },
            { citationChirho: "Romans 12:2", contentChirho: "And be not conformed to this world: but be ye transformed by the renewing of your mind, that ye may prove what is that good, and acceptable, and perfect, will of God." },
            { citationChirho: "Galatians 5:22-23", contentChirho: "But the fruit of the Spirit is love, joy, peace, longsuffering, gentleness, goodness, faith, Meekness, temperance: against such there is no law." },
            { citationChirho: "Hebrews 11:1", contentChirho: "Now faith is the substance of things hoped for, the evidence of things not seen." },
            { citationChirho: "2 Timothy 3:16", contentChirho: "All scripture is given by inspiration of God, and is profitable for doctrine, for reproof, for correction, for instruction in righteousness:" },
            { citationChirho: "Matthew 6:33", contentChirho: "But seek ye first the kingdom of God, and his righteousness; and all these things shall be added unto you." },
            { citationChirho: "Colossians 3:23", contentChirho: "And whatsoever ye do, do it heartily, as to the Lord, and not unto men;" },
            { citationChirho: "James 1:5", contentChirho: "If any of you lack wisdom, let him ask of God, that giveth to all men liberally, and upbraideth not; and it shall be given him." },
            { citationChirho: "1 Peter 5:7", contentChirho: "Casting all your care upon him; for he careth for you." },
            { citationChirho: "Psalm 119:105", contentChirho: "Thy word is a lamp unto my feet, and a light unto my path." }
        ];


        function showRandomVerseChirho() {
            const buttonChirho = document.getElementById(''verse-button-chirho'');
            const cardChirho = document.getElementById(''verse-card-chirho'');

            buttonChirho.disabled = true;

            cardChirho.classList.remove(''animate-in-chirho'');
            cardChirho.classList.add(''animate-out-chirho'');
            setTimeout(displayNewCardChirho, 500);
            playSoundChirho(true);
        }

        function displayNewCardChirho() {
            const cardChirho = document.getElementById(''verse-card-chirho'');
            const citationElementChirho = document.getElementById(''verse-citation-chirho'');
            const contentElementChirho = document.getElementById(''verse-content-chirho'');
            const buttonChirho = document.getElementById(''verse-button-chirho'');

            const randomIndexChirho = Math.floor(Math.random() * versesChirho.length);
            const randomVerseChirho = versesChirho[randomIndexChirho];

            cardChirho.style.visibility = "visible";

            citationElementChirho.textContent = randomVerseChirho.citationChirho;
            contentElementChirho.textContent = randomVerseChirho.contentChirho;

            cardChirho.classList.remove(''animate-out-chirho'');
            cardChirho.classList.add(''animate-in-chirho'');

            // Re-enable the button after the pop-in animation is done.
            setTimeout(function() {
                buttonChirho.disabled = false;
            }, 500);
            playSoundChirho(false);
        }

        function playSoundChirho(isDescendingChirho) {
            if (Tone.context.state !== ''running'') { Tone.start(); }
            const nowChirho = Tone.now();
            let scaleChirho = isDescendingChirho ? descendingScaleChirho : ascendingScaleChirho;

            scaleChirho.forEach((noteChirho, indexChirho) => {
                synthChirho.triggerAttackRelease(noteChirho, "32n", nowChirho + indexChirho * 0.05);
            });
        }
    </script>
</head>
<body>

    <div id="verse-container-chirho">
        <div id="verse-card-chirho">
            <div id="verse-citation-chirho"></div>
            <p id="verse-content-chirho"></p>
        </div>
    </div>

    <button id="verse-button-chirho" onclick="showRandomVerseChirho()">Verse!</button>

</body>
</html>
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $TARGET_FILE_CHIRHO HALLELUJAH"

else
    # If the file already exists, print a different message.
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week03-session2-chirho.sh',
  32,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 3 Session 3 (payload-week03-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'UpKT7Gg23ALglltx16rRz',
  'Week 3 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 03, Session 3',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 03, Session 3
# This script creates an HTML page that pulls verse data from an external JS file.

# --- Output initial messages ---
echo "Payload for Week 03 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-03-chirho/session-3-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
# First, ensure the directory exists.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the file does NOT exist before creating it.
if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the interactive HTML file using a ''here document''.
    cat << EOF > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - KJV Verses</title>

    <!-- External Libraries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>

    <!-- *** NEW CONCEPT *** -->
    <!-- We are importing your external script. This file MUST define the ''versesChirho'' constant. -->
    <!-- This must come BEFORE our main script so the variable is available. -->
    <script src="https://cp.lovejes.us/kjv-chirho.js"></script>

    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            text-align: center;
            background-color: rgb(45, 20, 70); /* New dark purple background */
            margin: 0;
            padding: 20px;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        #verse-container-chirho {
            width: 90%;
            max-width: 500px;
            min-height: 250px;
            position: relative;
            margin-bottom: 20px;
        }

        #verse-card-chirho {
            background-color: white;
            color: #333;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            position: absolute;
            width: 100%;
            visibility: hidden;
            box-sizing: border-box;
        }

        /* CSS Animations */
        @keyframes pop-in {
            0% { transform: scale(0.5); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }

        @keyframes pop-out {
            0% { transform: scale(1); opacity: 1; }
            100% { transform: scale(0.5); opacity: 0; }
        }

        .animate-in-chirho {
            visibility: visible;
            animation: pop-in 0.5s forwards;
        }

        .animate-out-chirho {
            visibility: visible;
            animation: pop-out 0.5s forwards;
        }

        #verse-citation-chirho {
            font-weight: bold;
            font-size: 1.2em;
            margin-bottom: 10px;
        }

        #verse-content-chirho {
            font-size: 1em;
            line-height: 1.6;
        }

        #verse-button-chirho {
            font-size: 18px;
            padding: 12px 24px;
            border-radius: 8px;
            border: 2px solid rgb(255, 220, 0);
            background-color: rgb(80, 40, 120); /* New button purple */
            color: rgb(255, 220, 0);
            cursor: pointer;
            font-weight: bold;
        }

        #verse-button-chirho:disabled {
            cursor: not-allowed;
            opacity: 0.5;
        }
    </style>

    <!-- Our main script is now much cleaner! -->
    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        // --- Sound Setup ---
        const synthChirho = new Tone.Synth().toDestination();
        const descendingScaleChirho = [''G5'', ''E5'', ''D5'', ''B4'', ''A4''];
        const ascendingScaleChirho = [''G4'', ''C5'', ''E5'', ''G5'', ''A5''];

        // --- Data Setup ---
        // The ''versesChirho'' constant is now loaded from the external kjv-chirho.js file!
        // This keeps our main HTML file clean and organized.

        function showRandomVerseChirho() {
            const buttonChirho = document.getElementById(''verse-button-chirho'');
            const cardChirho = document.getElementById(''verse-card-chirho'');

            buttonChirho.disabled = true;

            cardChirho.classList.remove(''animate-in-chirho'');
            cardChirho.classList.add(''animate-out-chirho'');
            setTimeout(displayNewCardChirho, 500);
            playSoundChirho(true);
        }

        function displayNewCardChirho() {
            const cardChirho = document.getElementById(''verse-card-chirho'');
            const citationElementChirho = document.getElementById(''verse-citation-chirho'');
            const contentElementChirho = document.getElementById(''verse-content-chirho'');
            const buttonChirho = document.getElementById(''verse-button-chirho'');

            const randomIndexChirho = Math.floor(Math.random() * versesChirho.length);
            const randomVerseChirho = versesChirho[randomIndexChirho];

            cardChirho.style.visibility = "visible";

            citationElementChirho.textContent = randomVerseChirho.citationChirho;
            contentElementChirho.textContent = randomVerseChirho.contentChirho;

            cardChirho.classList.remove(''animate-out-chirho'');
            cardChirho.classList.add(''animate-in-chirho'');

            setTimeout(function() {
                buttonChirho.disabled = false;
            }, 500);
            playSoundChirho(false);
        }

        function playSoundChirho(isDescendingChirho) {
            if (Tone.context.state !== ''running'') { Tone.start(); }
            const nowChirho = Tone.now();
            let scaleChirho = isDescendingChirho ? descendingScaleChirho : ascendingScaleChirho;

            scaleChirho.forEach((noteChirho, indexChirho) => {
                synthChirho.triggerAttackRelease(noteChirho, "32n", nowChirho + indexChirho * 0.05);
            });
        }
    </script>
</head>
<body>

    <div id="verse-container-chirho">
        <div id="verse-card-chirho">
            <div id="verse-citation-chirho"></div>
            <p id="verse-content-chirho"></p>
        </div>
    </div>

    <button id="verse-button-chirho" onclick="showRandomVerseChirho()">Verse!</button>

</body>
</html>
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $TARGET_FILE_CHIRHO HALLELUJAH"

else
    # If the file already exists, print a different message.
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week03-session3-chirho.sh',
  33,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 4 Session 1 (payload-week04-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'yGLjQBOS5-o_pjWp2hIj6',
  'Week 4 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 04, Session 1',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 04, Session 1
# This script creates a very basic HTML page to demonstrate the three core parts: Style, Body, and Script.

# --- Output initial messages ---
echo "Payload for Week 04 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-04-chirho/session-1-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
# First, ensure the directory exists.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the file does NOT exist before creating it.
if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the HTML file using a ''here document''.
    cat << EOF > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Basic Page Structure</title>

    <!-- SECTION 1: The <style> block (CSS) -->
    <!-- This is where we write CSS code to control how our page LOOKS. -->
    <!-- Here, we are styling the entire body of the page. -->
    <style>
        body {
            font-family: sans-serif;
            background-color: rgb(240, 245, 255); /* A very light blue */
            color: rgb(25, 25, 50); /* A dark blue for text */
            padding-top: 50px;
        }

        h1 {
            position: absolute;
        }

        h2 {
            margin-top: 100px;
        }
    </style>
</head>

<!-- SECTION 2: The <body> block (HTML) -->
<!-- This is the actual CONTENT of our page when it first loads. -->
<body>

    <h1 id="aleluya">Hallelujah</h1>

</body>

<!-- SECTION 3: The <script> block (JavaScript) -->
<!-- This is where we write JavaScript code to make our page interactive or change it after it loads. -->
<!-- This script will run as soon as the browser has read the body content above. -->
<script>
    // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

    // This line finds the body of our document and adds more HTML to the end of it.
    document.body.innerHTML += "<h2>Jesus Christ is Lord</h2>";

    let h1Chirho = document.getElementById("aleluya");
    function repositionChirho() {
      h1Chirho.style.left=(100+Math.cos(performance.now() * 0.01)* 100) + "px";
    }
    setInterval(repositionChirho, 25);
</script>

</html>
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $TARGET_FILE_CHIRHO HALLELUJAH"

else
    # If the file already exists, print a different message.
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week04-session1-chirho.sh',
  41,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 4 Session 2 (payload-week04-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'U-PY8vuTRHF2qDrNSyUgw',
  'Week 4 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 04, Session 2',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 04, Session 2
# This script creates the "Falling Fish" game.

# --- Output initial messages ---
echo "Payload for Week 04 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-04-chirho/session-2-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the interactive HTML file using a ''here document''.
    cat << ''EOF'' > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Falling Fish</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>

    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: rgb(135, 206, 250); /* Sky Blue */
            overflow: hidden;
        }

        #game-container-chirho {
            width: 90vw;
            height: 90vh;
            max-width: 800px;
            background-color: rgb(65, 105, 225); /* Royal Blue for water */
            border: 5px solid rgb(25, 25, 112); /* Midnight Blue border */
            position: relative;
            overflow: hidden;
        }

        #bucket-chirho {
            font-size: 50px;
            position: absolute;
            bottom: 10px;
            transform: translateX(-50%);
        }

        .falling-item-chirho {
            font-size: 40px;
            position: absolute;
            top: -50px;
        }

        #ui-container-chirho {
            position: absolute;
            top: 50px;
            left: 10px;
            color: white;
            font-size: 24px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }

        #verse-display-chirho {
            position: absolute;
            top: 15px;
            width: 100%;
            text-align: center;
            color: white;
            font-size: 16px;
            font-style: italic;
            padding: 0 20px;
            box-sizing: border-box;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.7);
            opacity: 1;
            transition: opacity 0.3s ease-in-out;
        }

        #game-overlay-chirho {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        #game-overlay-chirho h1 {
            font-size: 3em;
            margin: 0;
        }

        #game-overlay-chirho p {
            font-size: 1.2em;
        }

        #game-overlay-chirho button {
            font-size: 24px;
            padding: 15px 30px;
            border-radius: 10px;
            border: none;
            cursor: pointer;
            background-color: rgb(255, 215, 0); /* Gold */
            color: rgb(25, 25, 112);
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div id="game-container-chirho">
        <div id="bucket-chirho">🪣</div>

        <div id="verse-display-chirho"></div>
        <div id="ui-container-chirho">
            <div>Score: <span id="score-chirho">10</span></div>
            <div>Time: <span id="timer-chirho">0s</span></div>
        </div>

        <div id="game-overlay-chirho">
            <h1>Falling Fish</h1>
            <p>Catch the 🐟, but avoid the 🦐! Don''t let your score drop to 0.</p>
            <button id="start-button-chirho">Start Game</button>
        </div>
    </div>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        const gameContainerChirho = document.getElementById(''game-container-chirho'');
        const bucketChirho = document.getElementById(''bucket-chirho'');
        const scoreDisplayChirho = document.getElementById(''score-chirho'');
        const timerDisplayChirho = document.getElementById(''timer-chirho'');
        const overlayChirho = document.getElementById(''game-overlay-chirho'');
        const startButtonChirho = document.getElementById(''start-button-chirho'');
        const verseDisplayChirho = document.getElementById(''verse-display-chirho'');

        let scoreChirho;
        let timeChirho;
        let itemSpeedChirho;
        let itemSpawnRateChirho;
        let gameLoopIntervalChirho = null;
        let itemSpawnIntervalChirho = null;
        let timerIntervalChirho = null;
        let verseTimeoutChirho = null;

        // --- Verse Data (with corrected object keys) ---
        const versesChirho = {
            startChirho: "Philippians 4:13: I can do all things through Christ which strengtheneth me.",
            catchFishChirho: "Proverbs 16:18: Pride goeth before destruction, and an haughty spirit before a fall.",
            catchShrimpChirho: "Proverbs 24:16: For a just man falleth seven times, and riseth up again.",
            missFishChirho: "2 Peter 3:9: ...not willing that any should perish, but that all should come to repentance."
        };

        const synthChirho = new Tone.Synth().toDestination();

        startButtonChirho.addEventListener(''click'', startGameChirho);
        gameContainerChirho.addEventListener(''mousemove'', moveBucketChirho);

        function startGameChirho() {
            scoreChirho = 10;
            timeChirho = 0;
            itemSpeedChirho = 3;
            itemSpawnRateChirho = 1000;
            scoreDisplayChirho.textContent = scoreChirho;
            timerDisplayChirho.textContent = timeChirho + ''s'';
            overlayChirho.style.display = ''none'';

            updateVerseChirho(''startChirho''); // Use corrected key

            clearInterval(gameLoopIntervalChirho);
            clearInterval(itemSpawnIntervalChirho);
            clearInterval(timerIntervalChirho);

            gameLoopIntervalChirho = setInterval(gameLoopChirho, 16);
            itemSpawnIntervalChirho = setInterval(createFallingItemChirho, itemSpawnRateChirho);
            timerIntervalChirho = setInterval(updateTimerChirho, 1000);
        }

        function moveBucketChirho(event) {
            const gameRect = gameContainerChirho.getBoundingClientRect();
            const mouseX = event.clientX - gameRect.left;
            bucketChirho.style.left = mouseX + ''px'';
        }

        function createFallingItemChirho() {
            const item = document.createElement(''div'');
            item.className = ''falling-item-chirho'';

            if (timeChirho > 10 && Math.random() < 0.35) {
                item.textContent = ''🦐'';
                item.dataset.typeChirho = ''shrimp'';
            } else {
                item.textContent = ''🐟'';
                item.dataset.typeChirho = ''fish'';
            }

            item.style.left = Math.random() * (gameContainerChirho.clientWidth - 40) + ''px'';
            gameContainerChirho.appendChild(item);
        }

        function gameLoopChirho() {
            const allItems = document.querySelectorAll(''.falling-item-chirho'');
            const bucketRect = bucketChirho.getBoundingClientRect();

            allItems.forEach(item => {
                let itemTop = parseInt(item.style.top || 0);
                item.style.top = (itemTop + itemSpeedChirho) + ''px'';

                if (itemTop > gameContainerChirho.clientHeight) {
                    if (item.dataset.typeChirho === ''fish'') {
                        updateScoreChirho(-2);
                        playSoundChirho(''miss'');
                        updateVerseChirho(''missFishChirho''); // Use corrected key
                    }
                    item.remove();
                } else {
                    let itemRect = item.getBoundingClientRect();
                    if (
                        itemRect.bottom > bucketRect.top &&
                        itemRect.left < bucketRect.right &&
                        itemRect.right > bucketRect.left
                    ) {
                        if (item.dataset.typeChirho === ''shrimp'') {
                            updateScoreChirho(-1);
                            playSoundChirho(''miss'');
                            updateVerseChirho(''catchShrimpChirho''); // Use corrected key
                        } else {
                            updateScoreChirho(1);
                            playSoundChirho(''catch'');
                            updateVerseChirho(''catchFishChirho''); // Use corrected key
                        }
                        item.remove();
                    }
                }
            });

            if (scoreChirho <= 0) {
                endGameChirho();
            }
        }

        function updateTimerChirho() {
            timeChirho++;
            timerDisplayChirho.textContent = timeChirho + ''s'';

            if (timeChirho > 0 && timeChirho % 10 === 0) {
                itemSpeedChirho += 1;
                itemSpawnRateChirho = Math.max(250, itemSpawnRateChirho * 0.8);
                clearInterval(itemSpawnIntervalChirho);
                itemSpawnIntervalChirho = setInterval(createFallingItemChirho, itemSpawnRateChirho);
            }
        }

        function updateScoreChirho(amount) {
            scoreChirho += amount;
            scoreDisplayChirho.textContent = scoreChirho;
        }

        function updateVerseChirho(verseKeyChirho) {
            clearTimeout(verseTimeoutChirho);
            verseDisplayChirho.style.opacity = 0;

            verseTimeoutChirho = setTimeout(() => {
                verseDisplayChirho.textContent = versesChirho[verseKeyChirho];
                verseDisplayChirho.style.opacity = 1;
            }, 300);
        }

        function playSoundChirho(type) {
            if (Tone.context.state !== ''running'') { Tone.start(); }
            if (type === ''catch'') {
                synthChirho.triggerAttackRelease(''C5'', ''16n'');
            } else {
                synthChirho.triggerAttackRelease(''G3'', ''16n'');
            }
        }

        function endGameChirho() {
            clearInterval(gameLoopIntervalChirho);
            clearInterval(itemSpawnIntervalChirho);
            clearInterval(timerIntervalChirho);

            overlayChirho.style.display = ''flex'';
            overlayChirho.innerHTML = `
                <h1>Game Over</h1>
                <p>You survived for ${timeChirho} seconds!</p>
                <button id="restart-button-chirho">Play Again</button>
            `;

            document.querySelectorAll(''.falling-item-chirho'').forEach(f => f.remove());

            document.getElementById(''restart-button-chirho'').addEventListener(''click'', startGameChirho);
        }

    </script>
</body>
</html>
EOF

    echo "✅ Created new file: $TARGET_FILE_CHIRHO HALLELUJAH"

else
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week04-session2-chirho.sh',
  42,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 4 Session 3 (payload-week04-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '5iwLWYDJcZ9VFVacsphgZ',
  'Week 4 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 04, Session 3',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 04, Session 3
# This script creates the "Light of the World" interactive HTML page.

# --- Output initial messages ---
echo "Payload for Week 04 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-04-chirho/session-3-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the interactive HTML file using a ''here document''.
    cat << ''EOF'' > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Light of the World</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>

    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            margin: 0;
            padding: 20px;
            text-align: center;
            background-color: rgb(20, 20, 40);
            color: rgb(200, 200, 220);
            transition: background-color 2s ease-in-out;
        }

        .light-on-chirho {
            background-color: rgb(255, 253, 208);
            color: rgb(50, 50, 50);
        }

        #container-chirho {
            max-width: 600px;
            margin: 2vh auto;
        }

        h1 {
            color: rgb(255, 223, 100);
            font-size: 2.5em;
        }

        .light-on-chirho h1 {
            color: rgb(180, 140, 0);
        }

        p {
            font-style: italic;
            font-size: 1.1em;
            line-height: 1.6;
        }

        /* New styles for the control area */
        #controls-container-chirho {
            background-color: rgba(255, 255, 255, 0.05);
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }

        .select-group-chirho {
            margin-bottom: 15px;
        }

        .select-group-chirho label {
            font-weight: bold;
            margin-right: 10px;
        }

        select {
            font-size: 16px;
            padding: 8px;
            border-radius: 8px;
            border: 2px solid rgb(100, 100, 120);
        }

        #recipient-buttons-chirho {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .recipient-button-chirho {
            font-size: 16px;
            padding: 12px 20px;
            border-radius: 8px;
            border: none;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.2s;
        }

        .recipient-button-chirho:hover {
            transform: scale(1.05);
        }

        .recipient-button-chirho:disabled {
            opacity: 0.5;
            cursor: not-allowed;
            transform: scale(1);
        }

        /* Different colors for each button */
        #btn-orphan-chirho { background-color: rgb(0, 150, 150); }
        #btn-widow-chirho { background-color: rgb(180, 50, 100); }
        #btn-parents-chirho { background-color: rgb(80, 120, 180); }


        #work-display-chirho {
            margin-top: 30px;
            font-size: 22px;
            font-weight: bold;
            min-height: 50px;
            opacity: 0;
            transition: opacity 1s;
        }
    </style>
</head>
<body>

    <div id="container-chirho">
        <h1>The Light of the World</h1>
        <p>"Let your light so shine before men, that they may see your good works, and glorify your Father which is in heaven." - Matthew 5:16</p>

        <div id="controls-container-chirho">
            <div class="select-group-chirho">
                <label for="student-select-chirho">Student:</label>
                <select id="student-select-chirho">
                    <option>Montana</option>
                    <option>Eli</option>
                    <option>Alex</option>
                    <option>Daniel</option>
                    <option>Brandon</option>
                    <option>Dayron</option>
                </select>
            </div>

            <div class="select-group-chirho">
                <label for="action-select-chirho">Action:</label>
                <select id="action-select-chirho">
                    <option value="Help wash the dishes for">Help wash the dishes for</option>
                    <option value="Read the Bible to">Read the Bible to</option>
                    <option value="Pray for">Pray for</option>
                    <option value="Share a meal with">Share a meal with</option>
                    <option value="Give a gift to">Give a gift to</option>
                </select>
            </div>

            <div id="recipient-buttons-chirho">
                <button id="btn-orphan-chirho" class="recipient-button-chirho" onclick="letYourLightShineChirho(''an Orphan'')">👼 an Orphan</button>
                <button id="btn-widow-chirho" class="recipient-button-chirho" onclick="letYourLightShineChirho(''a Widow'')">❤️ a Widow</button>
                <button id="btn-parents-chirho" class="recipient-button-chirho" onclick="letYourLightShineChirho(''their Parent(s)'')">🙏 their Parent(s)</button>
            </div>
        </div>

        <div id="work-display-chirho"></div>
    </div>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        const synthChirho = new Tone.Synth().toDestination();

        // The function now accepts the ''recipient'' text from the clicked button.
        function letYourLightShineChirho(recipientParameterChirho) {

            const bodyElementChirho = document.body;
            const studentSelectChirho = document.getElementById(''student-select-chirho'');
            const actionSelectChirho = document.getElementById(''action-select-chirho'');
            const workDisplayElementChirho = document.getElementById(''work-display-chirho'');
            const recipientButtonsChirho = document.querySelectorAll(''.recipient-button-chirho'');

            // Get the selected text from the dropdown menus.
            const selectedStudentChirho = studentSelectChirho.value;
            const selectedActionChirho = actionSelectChirho.value;

            // Construct the final sentence from the selections.
            const goodWorkTextChirho = `${selectedStudentChirho} chose to: ${selectedActionChirho} ${recipientParameterChirho}.`;

            // --- The interaction starts! ---
            // Disable all recipient buttons.
            recipientButtonsChirho.forEach(button => button.disabled = true);

            if (Tone.context.state !== ''running'') { Tone.start(); }
            synthChirho.triggerAttackRelease("C6", "8n");

            bodyElementChirho.classList.add(''light-on-chirho'');

            workDisplayElementChirho.textContent = goodWorkTextChirho;
            workDisplayElementChirho.style.opacity = 1;

            // Set a timer to return to darkness.
            setTimeout(function() {
                bodyElementChirho.classList.remove(''light-on-chirho'');
                workDisplayElementChirho.style.opacity = 0;

                // After the text has faded, clear it and re-enable the buttons.
                setTimeout(function() {
                    workDisplayElementChirho.textContent = '''';
                    recipientButtonsChirho.forEach(button => button.disabled = false);
                }, 1000); // Wait 1 second for the text to fade out.

            }, 4000); // Keep the light on for 4 seconds.
        }
    </script>
</body>
</html>
EOF

    echo "✅ Created new file: $TARGET_FILE_CHIRHO HALLELUJAH"

else
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week04-session3-chirho.sh',
  43,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 5 Session 1 (payload-week05-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'YYP3Y_-1wgq41jTl19JjF',
  'Week 5 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 05, Session 1',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 05, Session 1
# This script creates the "RSA Secret Messages" interactive HTML page.

# --- Output initial messages ---
echo "Payload for Week 05 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-05-chirho/session-1-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
# First, ensure the directory exists. The -p flag is safe to run multiple times.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the file does NOT exist before creating it.
if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the interactive HTML file using a ''here document''.
    cat << ''EOF'' > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - RSA Encryption</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>

    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            background-color: rgb(240, 235, 225); /* Parchment color */
            color: rgb(50, 40, 30);
            line-height: 1.6;
            padding: 20px;
        }

        #container-chirho {
            max-width: 800px;
            margin: 0 auto;
            background-color: white;
            border: 2px solid rgb(210, 200, 180);
            border-radius: 10px;
            padding: 20px 40px;
        }

        h1, h2 {
            color: rgb(100, 80, 60);
            border-bottom: 2px solid rgb(220, 210, 190);
            padding-bottom: 10px;
        }

        .step-section-chirho {
            margin-bottom: 30px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }

        .step-section-chirho h3 {
            margin-top: 0;
            color: rgb(140, 110, 90);
        }

        /* New styles for the explanation panels */
        .panels-container-chirho {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-top: 20px;
            flex-wrap: wrap; /* Allows panels to wrap on smaller screens */
        }

        .panel-chirho {
            flex: 1;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 15px;
            text-align: center;
            min-width: 200px; /* Ensures panels don''t get too squished */
        }

        .panels-container-chirho > .panel-chirho:nth-of-type(1) { background-color: rgb(230, 240, 255); } /* Light Blue */
        .panels-container-chirho > .panel-chirho:nth-of-type(2) { background-color: rgb(255, 245, 230); } /* Light Orange */
        .panels-container-chirho > .panel-chirho:nth-of-type(3) { background-color: rgb(230, 255, 230); } /* Light Green */


        .panel-chirho h4 {
            margin-top: 0;
        }

        .panel-chirho .emoji-chirho {
            font-size: 48px;
        }

        .arrow-chirho {
            font-size: 36px;
            align-self: center;
            color: #aaa;
        }


        input[type="number"] {
            font-size: 16px;
            padding: 8px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 80px;
            text-align: center;
        }

        button {
            font-size: 16px;
            padding: 10px 15px;
            border-radius: 5px;
            border: none;
            background-color: rgb(100, 120, 100);
            color: white;
            font-weight: bold;
            cursor: pointer;
        }

        button:disabled {
            background-color: #aaa;
            cursor: not-allowed;
        }

        .key-display-chirho {
            margin-top: 15px;
            padding: 10px;
            border-radius: 5px;
            font-family: ''Courier New'', Courier, monospace;
            font-weight: bold;
        }

        .public-key-chirho {
            background-color: rgb(220, 255, 220); /* Light Green */
            border: 1px solid rgb(180, 220, 180);
        }

        .private-key-chirho {
            background-color: rgb(255, 220, 220); /* Light Red */
            border: 1px solid rgb(220, 180, 180);
        }

        .result-chirho {
            font-size: 1.2em;
            color: rgb(0, 100, 0);
            font-weight: bold;
        }

        code {
            background-color: #eee;
            padding: 3px 6px;
            border-radius: 4px;
            font-family: ''Courier New'', Courier, monospace;
        }
    </style>
</head>
<body>

    <div id="container-chirho">
        <h1>Secret Messages: The Power of Keys 🗝️ ☧</h1>
        <p>Throughout history, God''s people have used secret signs to show who they are and to protect themselves. Rahab used a scarlet cord to save her family. Early Christians used the symbol of a fish (Ichthys) to safely identify each other. These were like real-world passwords!</p>
        <p>Today, we use digital passwords and cryptography for good things too. It protects us when we do our online banking, and it allows ministries to safely send Bibles and aid to places where it is not allowed. The core problem is always the same: how do you send a secret message or a password to someone without it being seen by those in between?</p>
        <p>Imagine you have a treasure chest 🔐 with a single key. You lock a message inside and want to send it to a friend. If you send the key along with the treasure chest, anyone who intercepts it has the potential to open it! In Scripture, keys can represent unique authority. Christ says in <strong>Revelation 1:18</strong>, "...I am alive for evermore, Amen; and have the keys of hell and of death." There are similarities to how you and not just anyone should have authority over your own bank account.</p>

        <p><strong>Public Key Encryption</strong> solves our problem with a brilliant idea inspired by this concept of unique authority: what if you had <em>two</em> different keys?</p>
        <ul>
            <li>A <strong>Public Key</strong> 🔑 that can ONLY lock the chest.</li>
            <li>A <strong>Private Key</strong> 🤫 that can ONLY unlock the chest.</li>
        </ul>
        <p>You can give your Public Key to everyone! They can all lock messages for you, but only you, with your secret Private Key, have the authority to unlock and read them. One method of doing this is called RSA which works like the following:</p>

        <div class="step-section-chirho">
            <h3>Step 1: Generate the Keys ⚙️</h3>
            <p>First, we need two secret prime numbers. In modern cryptography we normally use numbers with thousands of binary digits. For example, we can use 7 and 13.</p>
            Prime 1 (p): <input type="number" id="p-chirho" value="7">
            Prime 2 (q): <input type="number" id="q-chirho" value="13">
            <button onclick="generateKeysChirho()">Generate Keys</button>

            <div id="key-generation-results-chirho" style="display: none;">
                <h4>Calculation Results:</h4>
                <p>
                    Modulus (n = p * q): <strong id="n-val-chirho"></strong><br>
                    Totient (phi = (p-1)*(q-1)): <strong id="phi-val-chirho"></strong>
                </p>
                <p>From the totient (phi), we derive our keys. The <strong>Public Key ''e''</strong> is a number that doesn''t share factors with phi (we chose 5). The <strong>Private Key ''d''</strong> is then calculated to satisfy the equation: <code>(e * d) % phi = 1</code>.</p>
                <div class="key-display-chirho public-key-chirho">
                    Public Key (e, n): <strong id="public-key-val-chirho"></strong> (Anyone can use this to lock messages)
                </div>
                <div class="key-display-chirho private-key-chirho">
                    Private Key (d, n): <strong id="private-key-val-chirho"></strong> (Only you have this to unlock messages)
                </div>
            </div>
        </div>

        <div class="step-section-chirho">
            <h3>Step 2: Encrypt a Message 🔒</h3>
            <p>Now, let''s write a secret message. We will lock it using the Public Key with this formula: <code>ciphertext = (message ^ e) % n</code></p>
            Message (a number < <span id="n-display-1-chirho">?</span>): <input type="number" id="message-chirho" value="10">
            <button id="encrypt-btn-chirho" onclick="encryptMessageChirho()" disabled>Encrypt with Public Key</button>
            <p>Encrypted Message (Ciphertext): <strong id="ciphertext-val-chirho" class="result-chirho"></strong></p>
        </div>

        <div class="step-section-chirho">
            <h3>Step 3: Decrypt the Message 🔓</h3>
            <p>The ciphertext can be sent publicly. To unlock it, the person with the Private Key uses this formula: <code>original = (ciphertext ^ d) % n</code></p>
            <button id="decrypt-btn-chirho" onclick="decryptMessageChirho()" disabled>Decrypt with Private Key</button>
            <p>Decrypted Message (Original): <strong id="decrypted-val-chirho" class="result-chirho"></strong></p>
        </div>

        <div class="step-section-chirho">
            <h3>Step 4: Signing a Message (The Reverse!) ✍️</h3>
            <p>The math works in reverse too. You can "lock" a message with your <strong>Private Key</strong>, and it can then ONLY be unlocked with your <strong>Public Key</strong>. This doesn''t keep it secret, but it can prove the message came from you!</p>
             Message to Sign: <input type="number" id="sign-message-chirho" value="42">
            <button id="sign-btn-chirho" onclick="signMessageChirho()" disabled>Sign with Private Key</button>
            <button id="verify-btn-chirho" onclick="verifySignatureChirho()" disabled>Verify with Public Key</button>
            <p>Signature: <strong id="signature-val-chirho" class="result-chirho"></strong> | Verified Message: <strong id="verified-val-chirho" class="result-chirho"></strong></p>
        </div>

        <h2>How Computers Use These Keys 🤝</h2>
        <p>This two-key system is how your computer connects securely to websites and servers (like GitHub). Here’s the "handshake" process:</p>
        <div class="panels-container-chirho">
            <div class="panel-chirho">
                <div class="emoji-chirho">💻</div>
                <h4>Step 1: Introduction</h4>
                <p>Your computer tells the server, "Hello! Here is my <strong>Public Key</strong> 🔑."</p>
            </div>
            <div class="arrow-chirho">➡️</div>
            <div class="panel-chirho">
                <div class="emoji-chirho">🔐</div>
                <h4>Step 2: The Secret</h4>
                <p>The server creates a new secret key. It locks this secret using your Public Key and sends it back. This shared key is used because it''s much faster for encrypting the rest of the messages!</p>
            </div>
            <div class="arrow-chirho">➡️</div>
            <div class="panel-chirho">
                <div class="emoji-chirho">🤫</div>
                <h4>Step 3: Secure Link</h4>
                <p>Only your computer, with its <strong>Private Key</strong>, can unlock the secret. Now both you and the server share the secret, and your connection is secure!</p>
            </div>
        </div>

        <h2>Proving Your Identity: Digital Signatures ✅</h2>
        <p>The reverse process from Step 4 is used to "sign" messages. When you send an email or make a commit on GitHub, the computer creates a unique code for that message (a "hash"). It then encrypts that hash with your <strong>Private Key</strong>. This is your digital signature. Anyone can then use your <strong>Public Key</strong> to decrypt the hash. If it matches the message, they have mathematical proof that you—and only you—sent it and that it wasn''t changed.</p>

        <h2>A Look at Modern Encryption 🔬</h2>
        <p>This simple RSA example shows the main principle, but real-world systems are more advanced. Today, you''ll often see algorithms like <strong>Ed25519</strong>, which is used for SSH keys. It''s based on a different, more complex type of math called ''elliptic curves'' and is generally faster and more secure for its size. Scientists are even developing "quantum-resistant" algorithms to stay safe from the powerful computers of tomorrow.</p>

    </div>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        // --- Global Variables ---
        let nChirho, phiChirho, eChirho, dChirho, ciphertextChirho, signatureChirho;

        // --- Sound Setup ---
        const synthChirho = new Tone.Synth().toDestination();

        function generateKeysChirho() {
            const pChirho = parseInt(document.getElementById(''p-chirho'').value);
            const qChirho = parseInt(document.getElementById(''q-chirho'').value);

            // --- Calculations ---
            nChirho = pChirho * qChirho;
            phiChirho = (pChirho - 1) * (qChirho - 1);
            eChirho = 5;

            let kChirho = 1;
            while (((kChirho * phiChirho) + 1) % eChirho !== 0) { kChirho++; }
            dChirho = ((kChirho * phiChirho) + 1) / eChirho;

            // --- Display Results ---
            document.getElementById(''n-val-chirho'').textContent = nChirho;
            document.getElementById(''phi-val-chirho'').textContent = phiChirho;
            document.getElementById(''public-key-val-chirho'').textContent = `(${eChirho}, ${nChirho})`;
            document.getElementById(''private-key-val-chirho'').textContent = `(${dChirho}, ${nChirho})`;
            document.getElementById(''n-display-1-chirho'').textContent = nChirho;

            document.getElementById(''key-generation-results-chirho'').style.display = ''block'';
            document.getElementById(''encrypt-btn-chirho'').disabled = false;
            document.getElementById(''sign-btn-chirho'').disabled = false;

            if (Tone.context.state !== ''running'') { Tone.start(); }
            synthChirho.triggerAttackRelease("C5", "8n");
        }

        function encryptMessageChirho() {
            const messageChirho = parseInt(document.getElementById(''message-chirho'').value);
            // ciphertext = (message ^ e) % n
            ciphertextChirho = Number(BigInt(messageChirho) ** BigInt(eChirho) % BigInt(nChirho));

            document.getElementById(''ciphertext-val-chirho'').textContent = ciphertextChirho;
            document.getElementById(''decrypt-btn-chirho'').disabled = false;

            if (Tone.context.state !== ''running'') { Tone.start(); }
            synthChirho.triggerAttackRelease("G4", "16n");
            setTimeout(() => synthChirho.triggerAttackRelease("C4", "16n"), 100);
        }

        function decryptMessageChirho() {
            // original_message = (ciphertext ^ d) % n
            const decryptedMessageChirho = Number(BigInt(ciphertextChirho) ** BigInt(dChirho) % BigInt(nChirho));
            document.getElementById(''decrypted-val-chirho'').textContent = decryptedMessageChirho;

            if (Tone.context.state !== ''running'') { Tone.start(); }
            synthChirho.triggerAttackRelease("C5", "16n");
            setTimeout(() => synthChirho.triggerAttackRelease("G5", "16n"), 100);
        }

        // --- New Functions for Signing ---
        function signMessageChirho() {
            const messageToSignChirho = parseInt(document.getElementById(''sign-message-chirho'').value);
            // signature = (message ^ d) % n  -- NOTE: We use the PRIVATE key ''d'' to sign
            signatureChirho = Number(BigInt(messageToSignChirho) ** BigInt(dChirho) % BigInt(nChirho));

            document.getElementById(''signature-val-chirho'').textContent = signatureChirho;
            document.getElementById(''verify-btn-chirho'').disabled = false;

            if (Tone.context.state !== ''running'') { Tone.start(); }
            synthChirho.triggerAttackRelease("E4", "8n");
        }

        function verifySignatureChirho() {
             // verified = (signature ^ e) % n -- NOTE: We use the PUBLIC key ''e'' to verify
            const verifiedMessageChirho = Number(BigInt(signatureChirho) ** BigInt(eChirho) % BigInt(nChirho));
            document.getElementById(''verified-val-chirho'').textContent = verifiedMessageChirho;

            if (Tone.context.state !== ''running'') { Tone.start(); }
            synthChirho.triggerAttackRelease("E5", "8n");
        }

    </script>
</body>
</html>
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $TARGET_FILE_CHIRHO HALLELUJAH"

else
    # If the file already exists, print a different message.
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week05-session1-chirho.sh',
  51,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 5 Session 2 (payload-week05-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'FX27ylgvNjOH3fcDnQtkL',
  'Week 5 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 05, Session 2',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 05, Session 2
# This script creates the "Bible Character Profiles" page and its external CSS and JS files.

# --- Output initial messages ---
echo "Payload for Week 05 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-05-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/characters-chirho.js"
TARGET_CSS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/style-chirho.css"

# --- Main logic ---
# First, ensure the directory exists.
mkdir -p "$TARGET_DIR_CHIRHO"

# --- Create the JavaScript data file ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

// This file contains our "database" of Bible characters.
const charactersDataChirho = [
  {
    "idChirho": "david",
    "nameChirho": "David",
    "descriptionChirho": "A shepherd boy who became king of Israel, known for his bravery against Goliath and his heart for God.",
    "keyVerseChirho": "Psalm 23:1 - ''The LORD is my shepherd; I shall not want.''"
  },
  {
    "idChirho": "esther",
    "nameChirho": "Esther",
    "descriptionChirho": "A brave Jewish queen of Persia who risked her life to save her people from destruction.",
    "keyVerseChirho": "Esther 4:14 - ''...and who knoweth whether thou art come to the kingdom for such a time as this?''"
  },
  {
    "idChirho": "paul",
    "nameChirho": "Apostle Paul",
    "descriptionChirho": "Once a persecutor of Christians, he had a dramatic conversion and became one of the greatest missionaries, writing many books of the New Testament.",
    "keyVerseChirho": "Philippians 4:13 - ''I can do all things through Christ which strengtheneth me.''"
  },
  {
    "idChirho": "ruth",
    "nameChirho": "Ruth",
    "descriptionChirho": "A Moabite woman who showed great loyalty to her mother-in-law, Naomi, and became an ancestor of King David and Jesus.",
    "keyVerseChirho": "Ruth 1:16 - ''...for whither thou goest, I will go; and where thou lodgest, I will lodge: thy people shall be my people, and thy God my God.''"
  }
];
EOF
    echo "✅ Created data file: $TARGET_JS_FILE_CHIRHO"
else
    echo "☑️ Data file already exists at $TARGET_JS_FILE_CHIRHO."
fi

# --- Create the CSS stylesheet file ---
if [[ ! -f "$TARGET_CSS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_CSS_FILE_CHIRHO"
/* "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV) */

body {
    font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
    background-color: rgb(245, 240, 230); /* Light Tan */
    color: rgb(60, 50, 40);
    line-height: 1.6;
    padding: 20px;
    margin: 0;
}

#container-chirho {
    max-width: 800px;
    margin: 0 auto;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    padding: 20px 40px;
}

h1, h2 {
    color: rgb(120, 90, 70);
    text-align: center;
}

#buttons-container-chirho {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
    margin-bottom: 30px;
    padding-bottom: 20px;
    border-bottom: 2px solid #eee;
}

.char-button-chirho {
    font-size: 16px;
    padding: 10px 20px;
    border-radius: 8px;
    border: none;
    background-color: rgb(100, 130, 110);
    color: white;
    font-weight: bold;
    cursor: pointer;
}

#profile-card-chirho {
    background-color: rgb(255, 253, 245);
    border-left: 5px solid rgb(100, 130, 110);
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.05);
    display: none; /* Initially hidden */
}

#profile-name-chirho {
    font-size: 1.8em;
    margin-top: 0;
    color: rgb(120, 90, 70);
}

#profile-verse-chirho {
    font-style: italic;
    margin-top: 15px;
    padding-left: 15px;
    border-left: 3px solid #ccc;
}
EOF
    echo "✅ Created CSS file: $TARGET_CSS_FILE_CHIRHO"
else
    echo "☑️ CSS file already exists at $TARGET_CSS_FILE_CHIRHO."
fi


# --- Create the HTML file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Bible Profiles</title>

    <!-- This is the new part! We link our external CSS file. -->
    <link rel="stylesheet" href="style-chirho.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <script src="characters-chirho.js"></script>

</head>
<body>

    <div id="container-chirho">
        <h1>Bible Character Profiles ☧</h1>
        <p>This page reads data from <code>characters-chirho.js</code> and styles from <code>style-chirho.css</code>. Click a name to learn more!</p>

        <div id="buttons-container-chirho">
            <!-- Character buttons will be added here by JavaScript -->
        </div>

        <div id="profile-card-chirho">
            <h2 id="profile-name-chirho"></h2>
            <p id="profile-description-chirho"></p>
            <p id="profile-verse-chirho"></p>
        </div>
    </div>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        const synthChirho = new Tone.Synth().toDestination();

        document.addEventListener(''DOMContentLoaded'', () => {
            if (typeof charactersDataChirho !== ''undefined'' && charactersDataChirho.length > 0) {
                createCharacterButtonsChirho();
            } else {
                document.getElementById(''buttons-container-chirho'').textContent = ''Error: Could not load character data from characters-chirho.js'';
            }
        });

        function createCharacterButtonsChirho() {
            const buttonsContainerChirho = document.getElementById(''buttons-container-chirho'');
            buttonsContainerChirho.innerHTML = '''';

            charactersDataChirho.forEach((characterChirho) => {
                const buttonChirho = document.createElement(''button'');
                buttonChirho.className = ''char-button-chirho'';
                buttonChirho.textContent = characterChirho.nameChirho;
                buttonChirho.onclick = () => displayProfileChirho(characterChirho.idChirho);
                buttonsContainerChirho.appendChild(buttonChirho);
            });
        }

        function displayProfileChirho(characterIdParameterChirho) {
            const characterToShowChirho = charactersDataChirho.find(char => char.idChirho === characterIdParameterChirho);

            if (!characterToShowChirho) return;

            const profileCardChirho = document.getElementById(''profile-card-chirho'');

            document.getElementById(''profile-name-chirho'').textContent = characterToShowChirho.nameChirho;
            document.getElementById(''profile-description-chirho'').textContent = characterToShowChirho.descriptionChirho;
            document.getElementById(''profile-verse-chirho'').textContent = characterToShowChirho.keyVerseChirho;

            profileCardChirho.style.display = ''block'';

            if (Tone.context.state !== ''running'') { Tone.start(); }
            synthChirho.triggerAttackRelease("C5", "16n");
        }
    </script>
</body>
</html>
EOF
    echo "✅ Created HTML file: $TARGET_HTML_FILE_CHIRHO. Hallelujah!"
else
    echo "☑️ HTML file already exists at $TARGET_HTML_FILE_CHIRHO. Hallelujah!"
fi
',
  'bash',
  'bash payload-week05-session2-chirho.sh',
  52,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 5 Session 3 (payload-week05-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '4T5uoObrz3GOFP9-KhiJc',
  'Week 5 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 05, Session 3',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 05, Session 3
# This script creates the "Who Am I?" quiz, separating HTML, CSS, data, and logic into four files, and adds a README.

# --- Output initial messages ---
echo "Payload for Week 05 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-05-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_DATA_FILE_CHIRHO="$TARGET_DIR_CHIRHO/character-data-chirho.js"
TARGET_JS_CODE_FILE_CHIRHO="$TARGET_DIR_CHIRHO/quiz-code-chirho.js"
TARGET_CSS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/style-chirho.css"
TARGET_README_FILE_CHIRHO="$TARGET_DIR_CHIRHO/README.md"

# --- Main logic ---
# First, ensure the directory exists.
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Create the README.md file if it''s missing or empty ---
if [[ ! -f "$TARGET_README_FILE_CHIRHO" || ! -s "$TARGET_README_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_README_FILE_CHIRHO"
# Sonshine Programming Class - Week 5, Session 3

## "Who Am I?" Bible Quiz

This directory contains the files for our Bible Character quiz. This project is a great example of **separation of concerns**, a very important principle in programming where we organize our code into different files based on what it does.

### Files in this Directory

* **`index.html`**: This is the main file that provides the structure of our webpage. It''s like the skeleton of the project, and it links all the other files together.

* **`style-chirho.css`**: This is our stylesheet. It contains all the CSS rules that make the page look nice, like colors, fonts, and layout. It''s the "clothing" and "appearance" of our project.

* **`character-data-chirho.js`**: This file acts as our "database". It holds the array of Bible characters, including their names and descriptions. Keeping data separate makes it easy to update or add more characters later without changing the other files.

* **`quiz-code-chirho.js`**: This file contains all the JavaScript logic. It reads the data, creates the buttons, handles the quiz questions, and checks the answers. This is the "brain" of our project.

Hallelujah!
EOF
    echo "✅ Created/Updated README.md file."
else
    echo "☑️ README.md file already exists and has content."
fi

# --- 2. Create the CSS stylesheet file ---
if [[ ! -f "$TARGET_CSS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_CSS_FILE_CHIRHO"
/* "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV) */

body {
    font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
    background-color: rgb(245, 240, 230); /* Light Tan */
    color: rgb(60, 50, 40);
    line-height: 1.6;
    padding: 20px;
    margin: 0;
}

#container-chirho {
    max-width: 800px;
    margin: 0 auto;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    padding: 20px 40px;
}

h1, h2 {
    color: rgb(120, 90, 70);
    text-align: center;
}

#quiz-area-chirho {
    background-color: rgb(255, 253, 245);
    border: 2px dashed rgb(200, 180, 160);
    padding: 20px;
    border-radius: 8px;
    margin-bottom: 30px;
    text-align: center;
}

#question-text-chirho {
    font-size: 1.2em;
    font-style: italic;
    min-height: 50px;
}

#buttons-container-chirho {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
    margin-bottom: 20px;
}

.char-button-chirho {
    font-size: 16px;
    padding: 10px 20px;
    border-radius: 8px;
    border: 2px solid transparent; /* For feedback */
    background-color: rgb(100, 130, 110);
    color: white;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.2s, transform 0.2s;
}

.char-button-chirho:hover {
    transform: scale(1.05);
}

.char-button-chirho:disabled {
    cursor: not-allowed;
    opacity: 0.7;
}

#feedback-area-chirho {
    text-align: center;
    font-size: 1.5em;
    font-weight: bold;
    min-height: 40px;
}

#controls-area-chirho {
    text-align: center;
    margin-top: 10px;
    min-height: 50px; /* Reserve space */
}

#next-button-chirho {
    font-size: 16px;
    padding: 10px 20px;
    border-radius: 8px;
    border: none;
    background-color: rgb(100, 120, 180);
    color: white;
    cursor: pointer;
    display: none; /* Hidden by default */
}
EOF
    echo "✅ Created CSS file: $TARGET_CSS_FILE_CHIRHO"
else
    echo "☑️ CSS file already exists at $TARGET_CSS_FILE_CHIRHO."
fi

# --- 3. Create the JavaScript data file ---
if [[ ! -f "$TARGET_JS_DATA_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_DATA_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
// This file is our "database". It only contains the data for our quiz.

const charactersDataChirho = [
  { "idChirho": "david", "nameChirho": "David", "descriptionChirho": "I was a shepherd boy who defeated a giant and became king of Israel.", "keyVerseChirho": "Psalm 23:1" },
  { "idChirho": "esther", "nameChirho": "Esther", "descriptionChirho": "I was a brave Jewish queen of Persia who risked my life to save my people.", "keyVerseChirho": "Esther 4:14" },
  { "idChirho": "paul", "nameChirho": "Apostle Paul", "descriptionChirho": "I once persecuted Christians, but then I met Jesus on the road to Damascus and became a great missionary.", "keyVerseChirho": "Philippians 4:13" },
  { "idChirho": "ruth", "nameChirho": "Ruth", "descriptionChirho": "I showed great loyalty to my mother-in-law, Naomi, and became an ancestor of Jesus.", "keyVerseChirho": "Ruth 1:16" },
  { "idChirho": "noah", "nameChirho": "Noah", "descriptionChirho": "God commanded me to build a giant ark to save my family and two of every kind of animal from a great flood.", "keyVerseChirho": "Genesis 6:9" },
  { "idChirho": "mary", "nameChirho": "Mary", "descriptionChirho": "I was a young woman chosen by God to be the mother of Jesus, our Savior.", "keyVerseChirho": "Luke 1:38" }
];
EOF
    echo "✅ Created data file: $TARGET_JS_DATA_FILE_CHIRHO"
else
    echo "☑️ Data file already exists at $TARGET_JS_DATA_FILE_CHIRHO."
fi

# --- 4. Create the JavaScript code/logic file ---
if [[ ! -f "$TARGET_JS_CODE_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_CODE_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
// This file contains all the code and logic that makes our quiz work.

// --- Global Variables ---
let currentCorrectAnswerChirho = null;
const synthChirho = new Tone.Synth().toDestination();

// --- Page Load ---
document.addEventListener(''DOMContentLoaded'', () => {
    // The data from ''character-data-chirho.js'' is available here because it was loaded first in the HTML.
    if (typeof charactersDataChirho !== ''undefined'' && charactersDataChirho.length > 0) {
        createCharacterButtonsChirho();
        document.getElementById(''next-button-chirho'').style.display = ''inline-block'';
    } else {
        document.getElementById(''buttons-container-chirho'').textContent = ''Error: Could not load data.'';
    }
});

function createCharacterButtonsChirho() {
    const buttonsContainerChirho = document.getElementById(''buttons-container-chirho'');
    buttonsContainerChirho.innerHTML = '''';

    charactersDataChirho.forEach((characterChirho) => {
        const buttonChirho = document.createElement(''button'');
        buttonChirho.className = ''char-button-chirho'';
        buttonChirho.textContent = characterChirho.nameChirho;
        buttonChirho.setAttribute(''data-id'', characterChirho.idChirho);
        buttonChirho.onclick = () => checkAnswerChirho(characterChirho.idChirho, buttonChirho);
        buttonsContainerChirho.appendChild(buttonChirho);
    });
}

function setupNewQuestionChirho() {
    const randomIndexChirho = Math.floor(Math.random() * charactersDataChirho.length);
    const questionCharacterChirho = charactersDataChirho[randomIndexChirho];
    currentCorrectAnswerChirho = questionCharacterChirho.idChirho;

    document.getElementById(''question-text-chirho'').textContent = `"${questionCharacterChirho.descriptionChirho}"`;

    document.getElementById(''feedback-area-chirho'').textContent = '''';
    document.querySelectorAll(''.char-button-chirho'').forEach(btn => {
        btn.disabled = false;
        btn.style.borderColor = ''transparent'';
    });

    document.getElementById(''next-button-chirho'').style.display = ''none'';
}

function checkAnswerChirho(selectedIdParameterChirho, clickedButtonParameterChirho) {
    const feedbackAreaChirho = document.getElementById(''feedback-area-chirho'');
    document.querySelectorAll(''.char-button-chirho'').forEach(btn => btn.disabled = true);

    if (selectedIdParameterChirho === currentCorrectAnswerChirho) {
        feedbackAreaChirho.textContent = ''Correct! Hallelujah!'';
        feedbackAreaChirho.style.color = ''green'';
        clickedButtonParameterChirho.style.borderColor = ''green'';

        if (Tone.context.state !== ''running'') { Tone.start(); }
        synthChirho.triggerAttackRelease("C5", "8n");
    } else {
        feedbackAreaChirho.textContent = ''Try again on the next one!'';
        feedbackAreaChirho.style.color = ''red'';
        clickedButtonParameterChirho.style.borderColor = ''red'';

        if (Tone.context.state !== ''running'') { Tone.start(); }
        synthChirho.triggerAttackRelease("C4", "8n");
    }

    const nextButtonChirho = document.getElementById(''next-button-chirho'');
    nextButtonChirho.textContent = ''Next Question'';
    nextButtonChirho.style.display = ''inline-block'';
}
EOF
    echo "✅ Created code file: $TARGET_JS_CODE_FILE_CHIRHO"
else
    echo "☑️ Code file already exists at $TARGET_JS_CODE_FILE_CHIRHO."
fi

# --- 5. Create the main HTML file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - "Who Am I?" Quiz</title>

    <!-- This HTML file is now very clean. It links to our other files. -->
    <link rel="stylesheet" href="style-chirho.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>

    <!-- IMPORTANT: The order matters! We load the data first... -->
    <script src="character-data-chirho.js"></script>
    <!-- ...then we load the code that uses the data. ''defer'' helps ensure the page is ready. -->
    <script src="quiz-code-chirho.js" defer></script>

</head>
<body>

    <div id="container-chirho">
        <h1>"Who Am I?" Bible Quiz ☧</h1>
        <p>"Ye shall know them by their fruits." (Matthew 7:16). Let''s see how well we know these figures of faith by their stories!</p>

        <div id="quiz-area-chirho">
            <h2>The Clue:</h2>
            <p id="question-text-chirho">Click "Start Game" to begin!</p>
        </div>

        <div id="buttons-container-chirho">
             <!-- Character buttons will be added here by JavaScript -->
        </div>

        <div id="feedback-area-chirho">
             <!-- Feedback appears here -->
        </div>

        <div id="controls-area-chirho">
            <button id="next-button-chirho" onclick="setupNewQuestionChirho()">Start Game</button>
        </div>
    </div>

</body>
</html>
EOF
    echo "✅ Created HTML file: $TARGET_HTML_FILE_CHIRHO. Hallelujah!"
else
    echo "☑️ HTML file already exists at $TARGET_HTML_FILE_CHIRHO. Hallelujah!"
fi
',
  'bash',
  'bash payload-week05-session3-chirho.sh',
  53,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 6 Session 1 (payload-week06-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'sMDHKtpesZrnxvNT3XX9a',
  'Week 6 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 06, Session 1',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 06, Session 1
# This script creates the "Drawing by Faith" app, separated into clean, efficient files.

# --- Output initial messages ---
echo "Payload for Week 06 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-06-chirho/session-1-chirho"

# --- Main logic ---
# First, ensure the directory exists.
mkdir -p "$TARGET_DIR_CHIRHO"

# ==============================================================================
# === EFFICIENT SOLUTION (DATA-DRIVEN & OPTIMIZED) =============================
# ==============================================================================

echo "Creating the efficient, scalable solution..."

# --- 1. Create the CSS file ---
cat << ''EOF'' > "$TARGET_DIR_CHIRHO/style-chirho.css"
/* "For God so loved the world..." (John 3:16 KJV) */
body { font-family: system-ui, sans-serif; background-color: rgb(240, 240, 245); color: rgb(40, 40, 50); line-height: 1.6; padding: 20px; margin: 0; display: flex; justify-content: center; align-items: center; flex-direction: column; }
#container-chirho { max-width: 900px; width: 100%; margin: 0 auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 20px rgba(0,0,0,0.1); padding: 20px 40px; text-align: center; }
h1 { color: rgb(80, 60, 150); }
#canvas-chirho { border: 3px solid rgb(200, 200, 220); border-radius: 8px; cursor: crosshair; margin-top: 15px; }
.controls-container-chirho { margin-top: 20px; border-top: 2px solid #f0f0f0; padding-top: 20px; }
.panels-wrapper-chirho { display: flex; justify-content: space-between; align-items: flex-start; width: 100%; }
.right-panel-chirho { display: flex; flex-direction: column; gap: 15px; }
.tool-group-chirho { display: flex; align-items: center; gap: 10px; padding: 10px; border: 1px solid #ddd; border-radius: 8px; flex-wrap: wrap; justify-content: center; }
#tools-group-chirho { max-width: 250px; }
.color-palette-chirho { display: flex; gap: 10px; }
.color-box-chirho, .tool-button-chirho { width: 30px; height: 30px; border-radius: 50%; border: 2px solid #fff; box-shadow: 0 0 5px rgba(0,0,0,0.2); cursor: pointer; transition: transform 0.2s, border-color 0.2s; display: flex; justify-content: center; align-items: center; font-size: 20px; }
.tool-button-chirho { background-color: #eee; }
.color-box-chirho.active-chirho, .tool-button-chirho.active-chirho { transform: scale(1.2); border-color: rgb(80, 60, 150); }
#brush-size-input-chirho { cursor: pointer; }
.storage-buttons-chirho { margin-top: 20px; display: flex; gap: 15px; justify-content: center; }
.action-button-chirho { font-size: 16px; padding: 10px 20px; border-radius: 8px; border: none; color: white; font-weight: bold; cursor: pointer; }
#save-btn-chirho { background-color: rgb(0, 150, 100); }
#load-btn-chirho { background-color: rgb(80, 120, 180); }
#clear-btn-chirho { background-color: rgb(200, 50, 50); }
EOF
echo "✅ Created style-chirho.css"

# --- 2. Create the JS Data file (using an Object for efficiency) ---
cat << ''EOF'' > "$TARGET_DIR_CHIRHO/drawing-data-chirho.js"
// "For God so loved the world..." (John 3:16 KJV)
// This file is our "database". It uses an object for fast lookups.

const toolsChirho = {
    ''draw-tool-chirho'': { type: ''draw'', emoji: ''✏️'' },
    ''cross-stamp-chirho'': { type: ''stamp'', emoji: ''✝️'' },
    ''fish-stamp-chirho'': { type: ''stamp'', emoji: ''🐟'' },
    ''heart-stamp-chirho'': { type: ''stamp'', emoji: ''❤️'' },
    ''dove-stamp-chirho'': { type: ''stamp'', emoji: ''🕊️'' },
    ''bible-stamp-chirho'': { type: ''stamp'', emoji: ''📖'' },
    ''prayer-stamp-chirho'': { type: ''stamp'', emoji: ''🙏'' },
    ''church-stamp-chirho'': { type: ''stamp'', emoji: ''⛪'' },
    ''hands-stamp-chirho'': { type: ''stamp'', emoji: ''🙌'' },
    ''menorah-stamp-chirho'': { type: ''stamp'', emoji: ''🕎'' }
};

const colorsChirho = [''#FFFFFF'', ''#000000'', ''#FF0000'', ''#0000FF'', ''#008000'', ''#FFFF00'', ''#FFA500''];
EOF
echo "✅ Created drawing-data-chirho.js"

# --- 3. Create the JS Code file (optimized for object lookups) ---
cat << ''EOF'' > "$TARGET_DIR_CHIRHO/drawing-code-chirho.js"
// "For God so loved the world..." (John 3:16 KJV)
// This file contains the optimized logic that works with our data object.

const canvasChirho = document.getElementById(''canvas-chirho'');
const contextChirho = canvasChirho.getContext(''2d'');
const storageKeyChirho = ''sonshine_drawing_chirho'';
let isDrawingChirho = false;
let currentToolChirho = ''draw'';
let currentStampChirho = ''✝️'';
const synthChirho = new Tone.Synth().toDestination();

function handleCanvasMouseDownChirho(eventParameterChirho) {
    if (currentToolChirho === ''draw'') {
        isDrawingChirho = true;
        drawChirho(eventParameterChirho);
    } else if (currentToolChirho === ''stamp'') {
        placeStampChirho(eventParameterChirho);
    }
}

function stopDrawingChirho() { isDrawingChirho = false; contextChirho.beginPath(); }

function drawChirho(eventParameterChirho) {
    if (!isDrawingChirho || currentToolChirho !== ''draw'') return;
    const rectChirho = canvasChirho.getBoundingClientRect();
    const xChirho = eventParameterChirho.clientX - rectChirho.left;
    const yChirho = eventParameterChirho.clientY - rectChirho.top;
    contextChirho.lineWidth = document.getElementById(''brush-size-input-chirho'').value;
    contextChirho.lineCap = ''round'';
    contextChirho.strokeStyle = document.querySelector(''.color-box-chirho.active-chirho'').style.backgroundColor;
    contextChirho.lineTo(xChirho, yChirho);
    contextChirho.stroke();
    contextChirho.beginPath();
    contextChirho.moveTo(xChirho, yChirho);
}

function placeStampChirho(eventParameterChirho) {
    const rectChirho = canvasChirho.getBoundingClientRect();
    const xChirho = eventParameterChirho.clientX - rectChirho.left;
    const yChirho = eventParameterChirho.clientY - rectChirho.top;
    const sizeChirho = document.getElementById(''brush-size-input-chirho'').value;
    contextChirho.font = `${sizeChirho * 2.5}px sans-serif`;
    contextChirho.fillStyle = document.querySelector(''.color-box-chirho.active-chirho'').style.backgroundColor;
    contextChirho.fillText(currentStampChirho, xChirho, yChirho);
    if (Tone.context.state !== ''running'') { Tone.start(); }
    synthChirho.triggerAttackRelease("A4", "32n");
}

function setupControlsChirho() {
    const toolsContainerChirho = document.getElementById(''tools-group-chirho'');
    const paletteContainerChirho = document.getElementById(''color-palette-chirho'');

    // Loop through the keys of our tools object to create the buttons
    for (const toolIdChirho in toolsChirho) {
        const toolDataChirho = toolsChirho[toolIdChirho];
        const toolButtonChirho = document.createElement(''div'');
        toolButtonChirho.id = toolIdChirho;
        toolButtonChirho.className = ''tool-button-chirho'';
        toolButtonChirho.textContent = toolDataChirho.emoji;
        toolButtonChirho.onclick = () => selectToolChirho(toolIdChirho);
        toolsContainerChirho.appendChild(toolButtonChirho);
    }

    colorsChirho.forEach(colorParameterChirho => {
        const colorBoxChirho = document.createElement(''div'');
        colorBoxChirho.className = ''color-box-chirho'';
        colorBoxChirho.style.backgroundColor = colorParameterChirho;
        colorBoxChirho.onclick = () => {
            document.querySelectorAll(''.color-box-chirho'').forEach(box => box.classList.remove(''active-chirho''));
            colorBoxChirho.classList.add(''active-chirho'');
        };
        paletteContainerChirho.appendChild(colorBoxChirho);
    });

    selectToolChirho(Object.keys(toolsChirho)[0]); // Select the first tool
    paletteContainerChirho.children[1].click();
}

function selectToolChirho(toolIdParameterChirho) {
    // This is the optimized lookup - much faster than .find()!
    const selectedToolChirho = toolsChirho[toolIdParameterChirho];
    if (!selectedToolChirho) return;

    currentToolChirho = selectedToolChirho.type;
    if (selectedToolChirho.type === ''stamp'') { currentStampChirho = selectedToolChirho.emoji; }

    document.querySelectorAll(''.tool-button-chirho'').forEach(btn => btn.classList.remove(''active-chirho''));
    document.getElementById(toolIdParameterChirho).classList.add(''active-chirho'');
}

function clearCanvasChirho() { contextChirho.clearRect(0, 0, canvasChirho.width, canvasChirho.height); if (Tone.context.state !== ''running'') { Tone.start(); } synthChirho.triggerAttackRelease("C4", "8n"); }
function saveDrawingChirho() { localStorage.setItem(storageKeyChirho, canvasChirho.toDataURL()); if (Tone.context.state !== ''running'') { Tone.start(); } synthChirho.triggerAttackRelease("E5", "16n"); alert("Saved!"); }
function loadDrawingChirho() {
    const imageDataUrlChirho = localStorage.getItem(storageKeyChirho);
    if (imageDataUrlChirho) {
        const imageChirho = new Image();
        imageChirho.onload = () => { clearCanvasChirho(); contextChirho.drawImage(imageChirho, 0, 0); };
        imageChirho.src = imageDataUrlChirho;
        if (Tone.context.state !== ''running'') { Tone.start(); }
        synthChirho.triggerAttackRelease("G5", "16n");
    } else { alert("Not found."); }
}

document.addEventListener(''DOMContentLoaded'', () => {
    setupControlsChirho();
    canvasChirho.addEventListener(''mousedown'', handleCanvasMouseDownChirho);
    canvasChirho.addEventListener(''mouseup'', stopDrawingChirho);
    canvasChirho.addEventListener(''mousemove'', drawChirho);
    canvasChirho.addEventListener(''mouseleave'', stopDrawingChirho);
});
EOF
echo "✅ Created drawing-code-chirho.js"

# --- 4. Create the HTML file ---
cat << ''EOF'' > "$TARGET_DIR_CHIRHO/index.html"
<!DOCTYPE html>
<!-- For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life. -->
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drawing by Faith</title>
    <link rel="stylesheet" href="style-chirho.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <script src="drawing-data-chirho.js"></script>
    <script src="drawing-code-chirho.js" defer></script>
</head>
<body>
    <div id="container-chirho">
        <h1>Drawing by Faith 🎨</h1>
        <p>"...written not with ink, but with the Spirit of the living God..." (2 Corinthians 3:3)</p>
        <canvas id="canvas-chirho" width="800" height="500"></canvas>
        <div class="controls-container-chirho">
            <div class="panels-wrapper-chirho">
                <div class="left-panel-chirho"><div class="tool-group-chirho" id="tools-group-chirho"><label>Tool:</label></div></div>
                <div class="right-panel-chirho">
                    <div class="tool-group-chirho"><label for="brush-size-input-chirho">Size:</label><input type="range" id="brush-size-input-chirho" min="1" max="50" value="5"></div>
                    <div class="tool-group-chirho"><label>Color:</label><div class="color-palette-chirho" id="color-palette-chirho"></div></div>
                </div>
            </div>
        </div>
        <div class="storage-buttons-chirho">
            <button id="save-btn-chirho" class="action-button-chirho" onclick="saveDrawingChirho()">❤️ Save</button>
            <button id="load-btn-chirho" class="action-button-chirho" onclick="loadDrawingChirho()">💖 Load</button>
            <button id="clear-btn-chirho" class="action-button-chirho" onclick="clearCanvasChirho()">Clear</button>
        </div>
    </div>
</body>
</html>
EOF
echo "✅ Created index.html"

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week06-session1-chirho.sh',
  61,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 6 Session 2 (payload-week06-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'UK800pyK5ebV0I9lYBhkf',
  'Week 6 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 06, Session 2',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 06, Session 2
# This script creates "The Shepherd''s Path" game with a Cloudflare Worker backend.

# --- Output initial messages ---
echo "Payload for Week 06 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-06-chirho/session-2-chirho"
WORKER_DIR_CHIRHO="$TARGET_DIR_CHIRHO/cloudflare-worker-chirho"

# --- Main logic ---
# First, ensure the directories exist.
mkdir -p "$TARGET_DIR_CHIRHO"
mkdir -p "$WORKER_DIR_CHIRHO"

# ==============================================================================
# === CLOUDFLARE WORKER AND INSTRUCTIONS =======================================
# ==============================================================================

echo "Creating Cloudflare Worker files..."

# --- 1. Create the README.md for the worker ---
cat << ''EOF'' > "$WORKER_DIR_CHIRHO/README.md"
# How to Deploy Your High Score Server

Hallelujah! This folder contains the code for our game''s backend, which will run on Cloudflare''s powerful serverless network. Follow these steps to get it running.

### Step 1: Create the Worker

1.  Log in to your **Cloudflare Dashboard**.
2.  In the left sidebar, go to **Workers & Pages**.
3.  Click **Create Application**, then **Create Worker**.
4.  Give your worker a name (e.g., `cp2025fe-highscores-chirho`) and click **Deploy**.

### Step 2: Add the Code

1.  After the worker is deployed, click **Edit code**.
2.  Delete all the default code in the editor.
3.  Open the `worker.js` file from this folder, copy its entire contents, and **paste it into the Cloudflare editor**.

### Step 3: Create the Database (KV Store)

1.  Go back to your worker''s main page (click its name in the top breadcrumbs).
2.  Click on the **Settings** tab, then the **Variables** sub-tab.
3.  Scroll down to **KV Namespace Bindings** and click **Add binding**.
4.  Fill in the two fields:
    * **Variable name:** `HIGHSCORES_CHIRHO`
    * **KV namespace:** Click the dropdown and select **Create a new namespace**. Name it `HIGHSCORES_CHIRHO`.
5.  Click **Save and deploy**.

Your high score server is now live and ready to be used by the game!
EOF
echo "✅ Created worker README.md"

# --- 2. Create the Cloudflare Worker script ---
cat << ''EOF'' > "$WORKER_DIR_CHIRHO/worker.js"
// "For God so loved the world..." (John 3:16 KJV)
export default {
  async fetch(requestChirho, envChirho) {
    const corsHeadersChirho = {
      ''Access-Control-Allow-Origin'': ''*'',
      ''Access-Control-Allow-Methods'': ''GET, POST, OPTIONS'',
      ''Access-Control-Allow-Headers'': ''Content-Type'',
    };

    if (requestChirho.method === ''OPTIONS'') {
      return new Response(null, { headers: corsHeadersChirho });
    }

    const urlChirho = new URL(requestChirho.url);
    if (urlChirho.pathname === ''/scores-chirho'') {
      if (requestChirho.method === ''GET'') {
        const scoresJsonChirho = await envChirho.HIGHSCORES_CHIRHO.get(''scoresListChirho'') || ''[]'';
        const scoresChirho = JSON.parse(scoresJsonChirho);
        return new Response(JSON.stringify(scoresChirho), { headers: { ...corsHeadersChirho, ''Content-Type'': ''application/json'' } });

      } else if (requestChirho.method === ''POST'') {
        const newScoreChirho = await requestChirho.json();
        const scoresJsonChirho = await envChirho.HIGHSCORES_CHIRHO.get(''scoresListChirho'') || ''[]'';
        let scoresChirho = JSON.parse(scoresJsonChirho);

        scoresChirho.push({
          nameChirho: newScoreChirho.nameChirho,
          scoreChirho: newScoreChirho.scoreChirho,
          timestampChirho: new Date().toISOString(),
        });

        scoresChirho.sort((aChirho, bChirho) => {
          if (bChirho.scoreChirho !== aChirho.scoreChirho) {
            return bChirho.scoreChirho - aChirho.scoreChirho;
          }
          return new Date(bChirho.timestampChirho) - new Date(aChirho.timestampChirho);
        });

        const top10ScoresChirho = scoresChirho.slice(0, 10);
        await envChirho.HIGHSCORES_CHIRHO.put(''scoresListChirho'', JSON.stringify(top10ScoresChirho));

        return new Response(JSON.stringify({ success: true }), { headers: { ...corsHeadersChirho, ''Content-Type'': ''application/json'' } });
      }
    }

    return new Response(''Hallelujah! The Shepherd\''s Path High Score Server is running.'', { headers: corsHeadersChirho });
  },
};
EOF
echo "✅ Created worker.js"

# ==============================================================================
# === MAIN GAME FILES ==========================================================
# ==============================================================================

echo "Creating main game files..."

# --- 3. Create the CSS file ---
cat << ''EOF'' > "$TARGET_DIR_CHIRHO/style-chirho.css"
@import url(''https://fonts.googleapis.com/css2?family=Quintessential&display=swap'');
body { font-family: system-ui, sans-serif; background-color: rgb(20, 30, 40); color: #fff; margin: 0; display: flex; justify-content: center; align-items: center; height: 100vh; overflow: hidden; }
#game-container-chirho { width: 100%; max-width: 800px; height: 600px; background-color: #000; border: 5px solid rgb(180, 150, 100); border-radius: 10px; box-shadow: 0 0 30px rgba(255, 220, 150, 0.3); position: relative; overflow: hidden; }
#background-image-chirho { width: 100%; height: 100%; object-fit: cover; position: absolute; z-index: 1; }
#character-sprite-chirho { position: absolute; bottom: 10%; left: 50%; transform: translateX(-50%); height: 40%; z-index: 2; transition: left 1s ease-in-out, bottom 1s ease-in-out, opacity 1s; }
#ui-container-chirho { position: absolute; bottom: 0; left: 0; width: 100%; z-index: 3; padding: 20px; box-sizing: border-box; background: linear-gradient(to top, rgba(0,0,0,0.8), rgba(0,0,0,0)); }
#text-box-chirho { background-color: rgba(0, 0, 0, 0.7); border: 2px solid rgb(180, 150, 100); border-radius: 8px; padding: 15px; margin-bottom: 15px; font-family: ''Quintessential'', cursive; font-size: 22px; min-height: 80px; }
#choices-box-chirho { display: flex; justify-content: center; gap: 20px; }
.choice-button-chirho { font-size: 16px; padding: 12px 20px; border-radius: 8px; border: 2px solid rgb(180, 150, 100); background-color: rgb(50, 40, 30); color: rgb(255, 220, 150); font-weight: bold; cursor: pointer; width: 250px; transition: background-color 0.3s; }
.choice-button-chirho:hover { background-color: rgb(80, 60, 40); }
#status-bar-chirho { position: absolute; top: 20px; left: 20px; background-color: rgba(0,0,0,0.5); padding: 5px 10px; border-radius: 8px; z-index: 4; }
#spirit-meter-container-chirho { width: 200px; height: 20px; background-color: #555; border-radius: 10px; border: 1px solid #999; overflow: hidden; }
#spirit-meter-fill-chirho { width: 50%; height: 100%; background: linear-gradient(to right, rgb(100, 200, 255), rgb(200, 255, 255)); transition: width 0.5s ease-in-out; }
.overlay-chirho { position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0,0,0,0.7); z-index: 10; display: flex; justify-content: center; align-items: center; }
.modal-chirho { background-color: rgb(50, 40, 30); padding: 30px; border-radius: 10px; border: 3px solid rgb(180, 150, 100); text-align: center; }
.modal-chirho h2 { font-family: ''Quintessential'', cursive; font-size: 2em; color: rgb(255, 220, 150); margin-top: 0; }
#player-name-chirho { font-size: 18px; padding: 10px; border-radius: 5px; border: 1px solid #ccc; width: 80%; }
#highscore-list-chirho { list-style-type: none; padding: 0; text-align: left; font-size: 18px; }
#highscore-list-chirho li { padding: 5px 0; border-bottom: 1px solid #555; }
EOF
echo "✅ Created style-chirho.css"

# --- 4. Create the JS Data file ---
cat << ''EOF'' > "$TARGET_DIR_CHIRHO/game-data-chirho.js"
// "For God so loved the world..." (John 3:16 KJV)
const storyDataChirho = {
    ''start'': { backgroundChirho: "https://cp.loveJes.us/payloads-chirho/shepherd-scene1-chirho.png", characterPosChirho: { leftChirho: ''20%'', bottomChirho: ''5%'', visibleChirho: true }, textChirho: "The sun rises over the hills. One of your lambs has wandered off. It looks like it might rain soon.", choicesChirho: [{ textChirho: "Find the lost lamb 🐑", spiritEffectChirho: 15, outcomeChirho: "You find the lamb, cold but safe. Your heart is full.", nextSceneChirho: ''scene2'' }, { textChirho: "Stay with the flock 🛡️", spiritEffectChirho: -10, outcomeChirho: "The flock is safe, but you worry for the one that is lost.", nextSceneChirho: ''scene2'' }] },
    ''scene2'': { backgroundChirho: "https://cp.loveJes.us/payloads-chirho/shepherd-scene2-chirho.png", characterPosChirho: { leftChirho: ''50%'', bottomChirho: ''10%'', visibleChirho: true }, textChirho: "A weary traveler asks if you have food to spare.", choicesChirho: [{ textChirho: "Share your bread 🥖", spiritEffectChirho: 15, outcomeChirho: "The traveler thanks you warmly. Sharing brings joy.", nextSceneChirho: ''scene3'' }, { textChirho: "Pretend you have none 🤫", spiritEffectChirho: -15, outcomeChirho: "You eat alone. The bread feels heavy in your stomach.", nextSceneChirho: ''scene3'' }] },
    ''scene3'': { backgroundChirho: "https://cp.loveJes.us/payloads-chirho/shepherd-scene3-chirho.png", characterPosChirho: { leftChirho: ''75%'', bottomChirho: ''8%'', visibleChirho: true }, textChirho: "Another shepherd struggles to lift a heavy rock from his well.", choicesChirho: [{ textChirho: "Offer to help 🙏", spiritEffectChirho: 20, outcomeChirho: "Together, you move the stone with ease. You''ve made a new friend.", nextSceneChirho: ''scene4'' }, { textChirho: "Walk past quietly 🚶", spiritEffectChirho: -10, outcomeChirho: "You avoid the trouble, but feel a pang of shame.", nextSceneChirho: ''scene4'' }] },
    ''scene4'': { backgroundChirho: "https://cp.loveJes.us/payloads-chirho/shepherd-scene4-chirho.png", characterPosChirho: { visibleChirho: false }, textChirho: "Night falls. You settle down by the fire with the other shepherds.", choicesChirho: [{ textChirho: "Thank God for the day 🙏", spiritEffectChirho: 5, outcomeChirho: "You fall asleep with a grateful heart.", nextSceneChirho: ''end'' }, { textChirho: "Worry about tomorrow 🤔", spiritEffectChirho: -5, outcomeChirho: "Anxious thoughts trouble your rest.", nextSceneChirho: ''end'' }] },
    ''end'': { backgroundChirho: "https://cp.loveJes.us/payloads-chirho/shepherd-scene-end-chirho.png", characterPosChirho: { visibleChirho: false }, textChirho: "The day comes to a close...", isEndChirho: true }
};
EOF
echo "✅ Created game-data-chirho.js"

# --- 5. Create the JS Code file ---
cat << ''EOF'' > "$TARGET_DIR_CHIRHO/game-code-chirho.js"
// "For God so loved the world..." (John 3:16 KJV)
const workerUrlChirho = ''https://cp2025fe-highscores-chirho.sonshinewarriors.org/scores-chirho'';

async function fetchHighScoresChirho() {
    try {
        const responseChirho = await fetch(workerUrlChirho);
        if (!responseChirho.ok) throw new Error(''Network response was not ok'');
        return await responseChirho.json();
    } catch (error) {
        console.error("Error fetching high scores:", error);
        return [];
    }
}

function displayHighScoresChirho(scoresArrayParameterChirho) {
    const highscoreListChirho = document.getElementById(''highscore-list-chirho'');
    highscoreListChirho.innerHTML = scoresArrayParameterChirho.length === 0 ? ''<li>The Shepherd\''s Wall is empty. Be the first!</li>'' : '''';
    scoresArrayParameterChirho.forEach((scoreDataChirho, indexChirho) => {
        const listItemChirho = document.createElement(''li'');
        listItemChirho.textContent = `${indexChirho + 1}. ${scoreDataChirho.nameChirho} - ${scoreDataChirho.scoreChirho}% Sown to Spirit`;
        highscoreListChirho.appendChild(listItemChirho);
    });
    document.getElementById(''end-game-container-chirho'').style.display = ''none'';
    document.getElementById(''highscore-container-chirho'').style.display = ''flex'';
}

window.saveScoreChirho = async function() {
    const nameInputChirho = document.getElementById(''player-name-chirho'');
    const playerNameChirho = nameInputChirho.value.trim() || ''Anonymous Shepherd'';
    const finalScoreChirho = window.gameStateChirho.spiritChirho;
    try {
        await fetch(workerUrlChirho, {
            method: ''POST'',
            headers: { ''Content-Type'': ''application/json'' },
            body: JSON.stringify({ nameChirho: playerNameChirho, scoreChirho: finalScoreChirho })
        });
        const updatedScoresChirho = await fetchHighScoresChirho();
        displayHighScoresChirho(updatedScoresChirho);
    } catch (error) {
        console.error("Error saving score: ", error);
    }
};

window.triggerEndGameSequenceChirho = async function() {
    document.getElementById(''ui-container-chirho'').style.display = ''none'';
    const currentHighScoresChirho = await fetchHighScoresChirho();
    const playerScoreChirho = window.gameStateChirho.spiritChirho;
    let isHighScoreChirho = currentHighScoresChirho.length < 10 || playerScoreChirho >= currentHighScoresChirho[currentHighScoresChirho.length - 1].scoreChirho;
    if (isHighScoreChirho) {
        document.getElementById(''end-game-container-chirho'').style.display = ''flex'';
    } else {
        displayHighScoresChirho(currentHighScoresChirho);
    }
};

const gameStateChirho = { currentSceneChirho: ''start'', spiritChirho: 50 };
window.gameStateChirho = gameStateChirho;
const goodChoiceSynthChirho = new Tone.Synth({ oscillator: { type: ''sine'' } }).toDestination();
const badChoiceSynthChirho = new Tone.Synth({ oscillator: { type: ''square'' } }).toDestination();

function loadSceneChirho(sceneIdParameterChirho) {
    const sceneChirho = storyDataChirho[sceneIdParameterChirho];
    if (!sceneChirho) return;
    gameStateChirho.currentSceneChirho = sceneIdParameterChirho;
    const characterSpriteChirho = document.getElementById(''character-sprite-chirho'');
    document.getElementById(''background-image-chirho'').src = sceneChirho.backgroundChirho;
    if (sceneChirho.characterPosChirho) {
        characterSpriteChirho.style.opacity = sceneChirho.characterPosChirho.visibleChirho ? ''1'' : ''0'';
        characterSpriteChirho.style.left = sceneChirho.characterPosChirho.leftChirho || ''50%'';
        characterSpriteChirho.style.bottom = sceneChirho.characterPosChirho.bottomChirho || ''10%'';
    }
    document.getElementById(''text-box-chirho'').textContent = sceneChirho.textChirho;
    const choicesBoxChirho = document.getElementById(''choices-box-chirho'');
    choicesBoxChirho.innerHTML = '''';
    if (sceneChirho.isEndChirho) {
        setTimeout(window.triggerEndGameSequenceChirho, 2000);
        return;
    }
    sceneChirho.choicesChirho.forEach((choiceParameterChirho, indexParameterChirho) => {
        const buttonChirho = document.createElement(''button'');
        buttonChirho.className = ''choice-button-chirho'';
        buttonChirho.innerHTML = choiceParameterChirho.textChirho;
        buttonChirho.onclick = () => makeChoiceChirho(indexParameterChirho);
        choicesBoxChirho.appendChild(buttonChirho);
    });
}

function makeChoiceChirho(choiceIndexParameterChirho) {
    const sceneChirho = storyDataChirho[gameStateChirho.currentSceneChirho];
    const choiceChirho = sceneChirho.choicesChirho[choiceIndexParameterChirho];
    gameStateChirho.spiritChirho = Math.max(0, Math.min(100, gameStateChirho.spiritChirho + choiceChirho.spiritEffectChirho));
    if (Tone.context.state !== ''running'') { Tone.start(); }
    if (choiceChirho.spiritEffectChirho > 0) { goodChoiceSynthChirho.triggerAttackRelease("C5", "8n"); } else { badChoiceSynthChirho.triggerAttackRelease("C3", "8n"); }
    updateSpiritMeterChirho();
    document.getElementById(''text-box-chirho'').textContent = choiceChirho.outcomeChirho;
    document.getElementById(''choices-box-chirho'').innerHTML = '''';
    setTimeout(() => { loadSceneChirho(choiceChirho.nextSceneChirho); }, 3000);
}

function updateSpiritMeterChirho() { document.getElementById(''spirit-meter-fill-chirho'').style.width = `${gameStateChirho.spiritChirho}%`; }
document.addEventListener(''DOMContentLoaded'', () => { loadSceneChirho(''start''); });
EOF
echo "✅ Created game-code-chirho.js"

# --- 6. Create the HTML file ---
cat << ''EOF'' > "$TARGET_DIR_CHIRHO/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - The Shepherd''s Path</title>
    <link rel="stylesheet" href="style-chirho.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <script src="game-data-chirho.js"></script>
    <script src="game-code-chirho.js" defer></script>
</head>
<body>
    <div id="game-container-chirho">
        <img id="background-image-chirho" src="https://cp.loveJes.us/payloads-chirho/shepherd-scene1-chirho.png" alt="A storybook scene from the Shepherd''s Path game.">
        <img id="character-sprite-chirho" src="https://cp.loveJes.us/payloads-chirho/shepherd-sprite-chirho.png" alt="The character sprite for Abel, the young shepherd.">
        <div id="status-bar-chirho"><label>Spirit:</label><div id="spirit-meter-container-chirho"><div id="spirit-meter-fill-chirho"></div></div></div>
        <div id="ui-container-chirho"><div id="text-box-chirho">The journey begins...</div><div id="choices-box-chirho"></div></div>
        <div id="end-game-container-chirho" class="overlay-chirho" style="display: none;"><div class="modal-chirho"><h2>The Path is Complete!</h2><p>You made the Shepherd''s Wall! Enter your name.</p><input type="text" id="player-name-chirho" placeholder="Your Name..."><button class="choice-button-chirho" style="margin-top: 15px;" onclick="window.saveScoreChirho()">Save Score</button></div></div>
        <div id="highscore-container-chirho" class="overlay-chirho" style="display: none;"><div class="modal-chirho"><h2>The Shepherd''s Wall</h2><ol id="highscore-list-chirho"></ol></div></div>
    </div>
</body>
</html>
EOF
echo "✅ Created index.html Hallelujah"

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week06-session2-chirho.sh',
  62,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 6 Session 3 (payload-week06-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'UF_55lO7D3hs4-U3hcsA4',
  'Week 6 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 06, Session 3',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Week 06, Session 3
# This script creates the "Discerner AI" application with sample data loading.

# --- Output initial messages ---
echo "Payload for Week 06 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-06-chirho/session-3-chirho"
TARGET_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"

# --- Main logic ---
# First, ensure the directory exists.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the file does NOT exist before creating it.
if [[ ! -f "$TARGET_FILE_CHIRHO" ]]; then

    # Create the interactive HTML file using a ''here document''.
    cat << ''EOF'' > "$TARGET_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - The Discerner AI</title>

    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            background-color: rgb(240, 245, 245);
            color: rgb(40, 50, 60);
            line-height: 1.6;
            padding: 20px;
            margin: 0;
        }

        #container-chirho {
            max-width: 800px;
            margin: 0 auto;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            padding: 20px 40px;
        }

        h1, h2 {
            color: rgb(50, 100, 120);
            text-align: center;
        }

        .section-chirho {
            margin-bottom: 30px;
            padding: 20px;
            border: 2px solid #eee;
            border-radius: 8px;
        }

        input[type="text"], textarea {
            font-size: 16px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 100%;
            box-sizing: border-box;
            margin-bottom: 10px;
            font-family: inherit;
        }

        .button-group-chirho {
            display: flex;
            gap: 10px;
            justify-content: center;
            flex-wrap: wrap;
        }

        button {
            font-size: 16px;
            padding: 10px 15px;
            border-radius: 8px;
            border: none;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }

        #train-love-btn-chirho { background-color: rgb(220, 50, 80); }
        #train-joy-btn-chirho { background-color: rgb(255, 180, 0); }
        #train-peace-btn-chirho { background-color: rgb(80, 150, 220); }
        #train-json-btn-chirho { background-color: rgb(100, 80, 180); }
        #paste-sample-btn-chirho { background-color: rgb(150, 150, 150); }
        #predict-btn-chirho { background-color: rgb(0, 150, 100); }

        #status-chirho, #result-chirho {
            text-align: center;
            font-size: 1.2em;
            font-weight: bold;
            margin-top: 15px;
            min-height: 25px;
        }
    </style>
</head>
<body>

    <div id="container-chirho">
        <h1>The Discerner AI 🧠</h1>
        <p style="text-align: center; font-style: italic;">"But the fruit of the Spirit is love, joy, peace..." - Galatians 5:22</p>
        <p>This simple AI learns to discern which fruit of the Spirit a phrase represents. The more examples you give it, the smarter it will become! Hallelujah!</p>

        <div class="section-chirho">
            <h2>Step 1: Train the AI (One by One)</h2>
            <p>Type an example phrase and click the button that best describes it.</p>
            <input type="text" id="training-input-chirho" placeholder="e.g., ''sharing a snack'', ''singing a happy song''">
            <div class="button-group-chirho">
                <button id="train-love-btn-chirho" onclick="addTrainingDataChirho(''love'')">Train as Love ❤️</button>
                <button id="train-joy-btn-chirho" onclick="addTrainingDataChirho(''joy'')">Train as Joy 😊</button>
                <button id="train-peace-btn-chirho" onclick="addTrainingDataChirho(''peace'')">Train as Peace 🕊️</button>
            </div>
            <p id="status-chirho">The Discerner is ready to be trained!</p>
        </div>

        <div class="section-chirho">
            <h2>Step 1b: Bulk Training with JSON</h2>
            <p>You can also paste a pre-made JSON list of training data here to teach the AI all at once.</p>
            <textarea id="json-input-chirho" rows="8" placeholder="Paste JSON data here, or click the button below to load sample data."></textarea>
            <div class="button-group-chirho">
                <button id="paste-sample-btn-chirho" onclick="pasteSampleDataChirho()">Paste Sample Data</button>
                <button id="train-json-btn-chirho" onclick="trainFromJsonChirho()">Train from JSON</button>
            </div>
        </div>

        <div class="section-chirho">
            <h2>Step 2: Ask the AI to Discern</h2>
            <p>Now type a new phrase and ask the AI to predict which category it belongs to.</p>
            <input type="text" id="predict-input-chirho" placeholder="e.g., ''giving a gift'', ''feeling calm''">
            <div class="button-group-chirho">
                <button id="predict-btn-chirho" onclick="predictChirho()">Discern Fruit</button>
            </div>
            <p id="result-chirho"></p>
        </div>
    </div>

    <script>
        // "For God so loved the world..." (John 3:16 KJV)

        const classifierChirho = {
            wordCountsChirho: { love: {}, joy: {}, peace: {} },
            docCountsChirho: { love: 0, joy: 0, peace: 0 },
            tokenizeChirho: function(textParameterChirho) {
                return textParameterChirho.toLowerCase().match(/\w+/g) || [];
            }
        };

        const statusElementChirho = document.getElementById(''status-chirho'');
        const resultElementChirho = document.getElementById(''result-chirho'');

        function addTrainingDataChirho(labelParameterChirho) {
            const textInputChirho = document.getElementById(''training-input-chirho'').value;
            if (textInputChirho.trim() === '''') {
                alert("Please enter a phrase to train with.");
                return;
            }
            trainChirho(textInputChirho, labelParameterChirho);
            statusElementChirho.textContent = `Added "${textInputChirho}" as ${labelParameterChirho}.`;
            document.getElementById(''training-input-chirho'').value = '''';
        }

        function trainChirho(textParameterChirho, labelParameterChirho) {
            const tokensChirho = classifierChirho.tokenizeChirho(textParameterChirho);
            classifierChirho.docCountsChirho[labelParameterChirho]++;
            tokensChirho.forEach(tokenChirho => {
                classifierChirho.wordCountsChirho[labelParameterChirho][tokenChirho] = (classifierChirho.wordCountsChirho[labelParameterChirho][tokenChirho] || 0) + 1;
            });
        }

        function trainFromJsonChirho() {
            const jsonInputChirho = document.getElementById(''json-input-chirho'').value;
            try {
                const trainingDataChirho = JSON.parse(jsonInputChirho);
                if (!Array.isArray(trainingDataChirho)) {
                    throw new Error("JSON data must be an array.");
                }
                let samplesAddedChirho = 0;
                trainingDataChirho.forEach(sampleChirho => {
                    if (sampleChirho.textChirho && sampleChirho.labelChirho) {
                        trainChirho(sampleChirho.textChirho, sampleChirho.labelChirho);
                        samplesAddedChirho++;
                    }
                });
                statusElementChirho.textContent = `Successfully added ${samplesAddedChirho} samples from JSON!`;
                document.getElementById(''json-input-chirho'').value = '''';
            } catch (errorChirho) {
                console.error("JSON Parsing Error:", errorChirho);
                alert("There was an error reading the JSON data. Please check that the format is correct.");
            }
        }

        function predictChirho() {
            const textToPredictChirho = document.getElementById(''predict-input-chirho'').value;
            if (textToPredictChirho.trim() === '''') {
                alert("Please enter a phrase to discern.");
                return;
            }
            const tokensChirho = classifierChirho.tokenizeChirho(textToPredictChirho);
            const scoresChirho = { love: 0, joy: 0, peace: 0 };
            const labelsChirho = [''love'', ''joy'', ''peace''];
            labelsChirho.forEach(labelChirho => {
                let scoreChirho = 0;
                tokensChirho.forEach(tokenChirho => {
                    if (classifierChirho.wordCountsChirho[labelChirho][tokenChirho]) {
                        scoreChirho += classifierChirho.wordCountsChirho[labelChirho][tokenChirho];
                    }
                });
                scoresChirho[labelChirho] = scoreChirho;
            });
            let bestGuessChirho = ''unknown'';
            let maxScoreChirho = -1;
            for (const labelKeyChirho in scoresChirho) {
                if (scoresChirho[labelKeyChirho] > maxScoreChirho) {
                    maxScoreChirho = scoresChirho[labelKeyChirho];
                    bestGuessChirho = labelKeyChirho;
                }
            }
            let emojiChirho = '''';
            if (bestGuessChirho === ''love'') emojiChirho = ''❤️'';
            if (bestGuessChirho === ''joy'') emojiChirho = ''😊'';
            if (bestGuessChirho === ''peace'') emojiChirho = ''🕊️'';
            if(maxScoreChirho > 0) {
                 resultElementChirho.textContent = `I discern... ${bestGuessChirho} ${emojiChirho}`;
            } else {
                 resultElementChirho.textContent = `I''m not sure yet. Please provide more training!`;
            }
        }

        // --- NEW: Sample Data and Pasting Function ---
        const sampleJsonDataChirho = `[
  { "textChirho": "helping a neighbor carry groceries", "labelChirho": "love" },
  { "textChirho": "giving a thoughtful gift", "labelChirho": "love" },
  { "textChirho": "forgiving someone who hurt you", "labelChirho": "love" },
  { "textChirho": "making a meal for a friend", "labelChirho": "love" },
  { "textChirho": "listening with patience", "labelChirho": "love" },
  { "textChirho": "donating to a charity", "labelChirho": "love" },
  { "textChirho": "comforting someone who is sad", "labelChirho": "love" },
  { "textChirho": "volunteering at church", "labelChirho": "love" },
  { "textChirho": "writing an encouraging note", "labelChirho": "love" },
  { "textChirho": "defending someone who is being treated unfairly", "labelChirho": "love" },
  { "textChirho": "being kind to animals", "labelChirho": "love" },
  { "textChirho": "visiting the sick", "labelChirho": "love" },
  { "textChirho": "speaking gently", "labelChirho": "love" },
  { "textChirho": "showing mercy", "labelChirho": "love" },
  { "textChirho": "celebrating good news with family", "labelChirho": "joy" },
  { "textChirho": "laughing with friends", "labelChirho": "joy" },
  { "textChirho": "singing songs of praise", "labelChirho": "joy" },
  { "textChirho": "feeling thankful for a sunny day", "labelChirho": "joy" },
  { "textChirho": "achieving a goal you worked hard for", "labelChirho": "joy" },
  { "textChirho": "watching a funny movie", "labelChirho": "joy" },
  { "textChirho": "dancing at a wedding", "labelChirho": "joy" },
  { "textChirho": "receiving a welcome surprise", "labelChirho": "joy" },
  { "textChirho": "rejoicing in the Lord", "labelChirho": "joy" },
  { "textChirho": "feeling excited about the future", "labelChirho": "joy" },
  { "textChirho": "playing a fun game", "labelChirho": "joy" },
  { "textChirho": "a heart full of gratitude", "labelChirho": "joy" },
  { "textChirho": "the birth of a new baby", "labelChirho": "joy" },
  { "textChirho": "a cheerful spirit", "labelChirho": "joy" },
  { "textChirho": "sitting quietly by a stream", "labelChirho": "peace" },
  { "textChirho": "resolving a disagreement calmly", "labelChirho": "peace" },
  { "textChirho": "reading the Bible in the morning", "labelChirho": "peace" },
  { "textChirho": "praying before bed", "labelChirho": "peace" },
  { "textChirho": "feeling safe and secure", "labelChirho": "peace" },
  { "textChirho": "a quiet and still mind", "labelChirho": "peace" },
  { "textChirho": "trusting in God''s plan", "labelChirho": "peace" },
  { "textChirho": "taking a nap on a lazy afternoon", "labelChirho": "peace" },
  { "textChirho": "a tranquil garden", "labelChirho": "peace" },
  { "textChirho": "casting your cares upon the Lord", "labelChirho": "peace" },
  { "textChirho": "a clean and tidy room", "labelChirho": "peace" },
  { "textChirho": "the silence after a soft rain", "labelChirho": "peace" },
  { "textChirho": "watching the sunset", "labelChirho": "peace" },
  { "textChirho": "being content with what you have", "labelChirho": "peace" }
]`;

        function pasteSampleDataChirho() {
            const jsonInputChirho = document.getElementById(''json-input-chirho'');
            jsonInputChirho.value = sampleJsonDataChirho;
        }

    </script>
</body>
</html>
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $TARGET_FILE_CHIRHO HALLELUJAH"

else
    # If the file already exists, print a different message.
    echo "☑️ File already exists at $TARGET_FILE_CHIRHO. No changes made. Hallelujah!"
fi
',
  'bash',
  'bash payload-week06-session3-chirho.sh',
  63,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 7 Session 1 (payload-week07-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'hEIUo-kjVFR3ROYCE-spE',
  'Week 7 Session 1',
  'Payload for Sonshine Programming Class Chirho: Christian Car Game',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world, that He gave His only begotten Son, that all who believe in Him should not perish but have everlasting life.
# Payload for Sonshine Programming Class Chirho: Christian Car Game
# This script creates the "Sowing to the Spirit" car driving game.

# --- Output initial messages ---
echo "Payload for Week 7 Session 1 - Sowing to the Spirit"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-07-chirho/session-1-chirho"
HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index-chirho.html"
JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/game-chirho.js"

# --- Main logic ---
# First, ensure the directory exists.
mkdir -p "$TARGET_DIR_CHIRHO"

# Check if the HTML file does NOT exist before creating it.
if [[ ! -f "$HTML_FILE_CHIRHO" ]]; then

    # Create the HTML file using a ''here document''.
    cat << ''EOF'' > "$HTML_FILE_CHIRHO"
/* John 3:16 - For God so loved the world that he gave his one and only Son,
   that whoever believes in him shall not perish but have eternal life. */

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Christian Car Game - Sowing to the Spirit</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: hidden;
            font-family: Arial, sans-serif;
            background: #000;
        }

        #game-container-chirho {
            position: relative;
            width: 100vw;
            height: 100vh;
        }

        #game-canvas-chirho {
            display: block;
            width: 100%;
            height: 100%;
        }

        #hud-chirho {
            position: absolute;
            top: 20px;
            left: 20px;
            color: white;
            font-size: 18px;
            z-index: 100;
            background: rgba(0, 0, 0, 0.7);
            padding: 15px;
            border-radius: 10px;
        }

        #spiritual-meter-chirho {
            position: absolute;
            top: 20px;
            right: 20px;
            width: 200px;
            height: 150px;
            background: rgba(0, 0, 0, 0.8);
            border-radius: 10px;
            padding: 15px;
            color: white;
            z-index: 100;
        }

        #spirit-bar-chirho, #flesh-bar-chirho {
            width: 100%;
            height: 20px;
            border: 2px solid white;
            margin: 10px 0;
            border-radius: 5px;
            overflow: hidden;
        }

        #spirit-fill-chirho {
            height: 100%;
            background: linear-gradient(90deg, #4CAF50, #8BC34A);
            width: 50%;
            transition: width 0.3s;
        }

        #flesh-fill-chirho {
            height: 100%;
            background: linear-gradient(90deg, #F44336, #FF5722);
            width: 30%;
            transition: width 0.3s;
        }

        #game-over-chirho {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: rgba(0, 0, 0, 0.9);
            color: white;
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            display: none;
            z-index: 200;
        }
    </style>
</head>
<body>
    <div id="game-container-chirho">
        <canvas id="game-canvas-chirho"></canvas>

        <div id="hud-chirho">
            <div>Speed: <span id="speed-display-chirho">0</span> mph</div>
            <div>Speed Limit: <span id="speed-limit-display-chirho">65</span> mph</div>
            <div>Status: <span id="driving-status-chirho">Good Driving</span></div>
        </div>

        <div id="spiritual-meter-chirho">
            <h3>Spiritual Condition</h3>
            <div>Sowing to Spirit: <span id="spirit-fill-chirho">0s</span></div>
            <div>Sowing to Flesh:</div>
            <div id="flesh-bar-chirho">
                <div id="flesh-fill-chirho"></div>
            </div>
        </div>

        <div id="game-over-chirho">
            <h2>You have died in your sins</h2>
            <p>"Do not be deceived: God cannot be mocked. A man reaps what he sows." - Galatians 6:7</p>
            <button onclick="restartGameChirho()">Restart</button>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.8.49/Tone.js"></script>
    <script src="game-chirho.js"></script>
</body>
</html>
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $HTML_FILE_CHIRHO HALLELUJAH"

else
    # If the file already exists, print a different message.
    echo "☑️ HTML file already exists at $HTML_FILE_CHIRHO. No changes made. Hallelujah!"
fi

# Check if the JS file does NOT exist before creating it.
if [[ ! -f "$JS_FILE_CHIRHO" ]]; then

    # Create the JavaScript file using a ''here document''.
    cat << ''EOF'' > "$JS_FILE_CHIRHO"
/* John 3:16 - For God so loved the world that he gave his one and only Son,
   that whoever believes in him shall not perish but have eternal life. */

let sceneChirho, cameraChirho, rendererChirho;
let playerCarChirho, steeringWheelChirho, dashboardChirho, dashboardGroupChirho;
let temptationCarsChirho = [];
let oncomingCarsChirho = [];
let roadChirho,
  roadSegmentsChirho = [];
let treesChirho = [];
let roadCurveChirho = 0;
let playerRotationChirho = 0;
let synthChirho, crashSynthChirho, hornSynthChirho;
let speedChirho = 0;
let maxSpeedChirho = 120;
let speedLimitChirho = 65;
let accelerationChirho = 0;
let spiritSowingChirho = 0;
let fleshSowingChirho = 30;
let spiritTimeChirho = 0;
let isGameOverChirho = false;

const keysChirho = {
  up: false,
  down: false,
  left: false,
  right: false,
};

const temptationTypesChirho = [
  "Pride",
  "Greed",
  "Lust",
  "Anger",
  "Gluttony",
  "Envy",
  "Sloth",
  "Gossip",
  "Slander",
  "Jealousy",
  "Hatred",
  "Bitterness",
  "Malice",
];

const carColorsChirho = [
  0xff0000, 0x00ff00, 0x0000ff, 0xffff00, 0xff00ff, 0x00ffff, 0xff8000,
  0x8000ff, 0x0080ff, 0xff0080, 0x80ff00, 0xff4000, 0x4000ff, 0x00ff40,
  0xff8080, 0x8080ff, 0x80ff80,
];

function initGameChirho() {
  sceneChirho = new THREE.Scene();
  sceneChirho.background = new THREE.Color(0x87ceeb);
  cameraChirho = new THREE.PerspectiveCamera(
    75,
    window.innerWidth / window.innerHeight,
    0.1,
    1000,
  );
  rendererChirho = new THREE.WebGLRenderer({
    canvas: document.getElementById("game-canvas-chirho"),
  });
  rendererChirho.setSize(window.innerWidth, window.innerHeight);
  rendererChirho.shadowMap.enabled = true;
  rendererChirho.shadowMap.type = THREE.PCFSoftShadowMap;

  createLightingChirho();
  createRoadChirho();
  createTreesChirho();
  createCloudsChirho();
  createPlayerCarChirho();
  createDashboardChirho();
  createTemptationCarsChirho();
  createOncomingCarsChirho();

  for (let carChirho of temptationCarsChirho) {
    createTemptationLabelChirho(carChirho.userData.temptationType, carChirho);
  }

  playerCarChirho.add(cameraChirho);
  cameraChirho.position.set(0, 1.5, 1);
  cameraChirho.lookAt(0, 1, -10);

  setupAudioChirho();
  setupEventListenersChirho();
  gameLoopChirho();
}

function createLightingChirho() {
  const ambientLightChirho = new THREE.AmbientLight(0x404040, 0.6);
  sceneChirho.add(ambientLightChirho);

  const directionalLightChirho = new THREE.DirectionalLight(0xffffff, 0.8);
  directionalLightChirho.position.set(50, 50, 50);
  directionalLightChirho.castShadow = true;
  sceneChirho.add(directionalLightChirho);
}

function createRoadChirho() {
  for (let i = 0; i < 150; i++) {
    createRoadSegmentChirho(i * 8 - 600);
  }

  const grassGeometryChirho = new THREE.PlaneGeometry(400, 400);
  const grassMaterialChirho = new THREE.MeshLambertMaterial({
    color: 0x228b22,
  });
  const grassChirho = new THREE.Mesh(grassGeometryChirho, grassMaterialChirho);
  grassChirho.rotation.x = -Math.PI / 2;
  grassChirho.position.y = -0.1;
  sceneChirho.add(grassChirho);
}

function createRoadSegmentChirho(zPositionChirho) {
  const segmentGroupChirho = new THREE.Group();

  const roadGeometryChirho = new THREE.PlaneGeometry(14, 10);
  const roadMaterialChirho = new THREE.MeshLambertMaterial({ color: 0x333333 });
  const roadPieceChirho = new THREE.Mesh(
    roadGeometryChirho,
    roadMaterialChirho,
  );
  roadPieceChirho.rotation.x = -Math.PI / 2;
  roadPieceChirho.receiveShadow = true;
  segmentGroupChirho.add(roadPieceChirho);

  for (let j = 0; j < 2; j++) {
    const lineGeometryChirho = new THREE.PlaneGeometry(0.4, 1.5);
    const lineMaterialChirho = new THREE.MeshBasicMaterial({ color: 0xffff00 });
    const lineChirho = new THREE.Mesh(lineGeometryChirho, lineMaterialChirho);
    lineChirho.rotation.x = -Math.PI / 2;
    lineChirho.position.set(0, 0.01, (j - 0.5) * 3);
    segmentGroupChirho.add(lineChirho);
  }

  const curveAmountChirho = Math.sin(zPositionChirho * 0.015) * 4;
  segmentGroupChirho.position.x = curveAmountChirho;
  segmentGroupChirho.position.z = zPositionChirho;
  segmentGroupChirho.rotation.y = curveAmountChirho * 0.03;

  roadSegmentsChirho.push(segmentGroupChirho);
  sceneChirho.add(segmentGroupChirho);
}

function createTreesChirho() {
  for (let i = 0; i < 30; i++) {
    const treeChirho = createConeTreeChirho();
    const sideChirho = Math.random() > 0.5 ? 1 : -1;
    treeChirho.position.x = sideChirho * (15 + Math.random() * 20);
    treeChirho.position.z = Math.random() * 400 - 200;
    treesChirho.push(treeChirho);
    sceneChirho.add(treeChirho);
  }
}

function createConeTreeChirho() {
  const treeGroupChirho = new THREE.Group();

  const trunkGeometryChirho = new THREE.CylinderGeometry(0.3, 0.3, 3, 8);
  const trunkMaterialChirho = new THREE.MeshLambertMaterial({
    color: 0x8b4513,
  });
  const trunkChirho = new THREE.Mesh(trunkGeometryChirho, trunkMaterialChirho);
  trunkChirho.position.y = 1.5;

  const coneGeometryChirho = new THREE.ConeGeometry(2, 4, 8);
  const coneMaterialChirho = new THREE.MeshLambertMaterial({ color: 0x228b22 });
  const coneChirho = new THREE.Mesh(coneGeometryChirho, coneMaterialChirho);
  coneChirho.position.y = 4;

  treeGroupChirho.add(trunkChirho);
  treeGroupChirho.add(coneChirho);
  return treeGroupChirho;
}

function createCloudsChirho() {
  for (let i = 0; i < 20; i++) {
    const cloudChirho = createCloudChirho();
    cloudChirho.position.x = (Math.random() - 0.5) * 400;
    cloudChirho.position.y = 20 + Math.random() * 20;
    cloudChirho.position.z = (Math.random() - 0.5) * 400;
    sceneChirho.add(cloudChirho);
  }
}

function createCloudChirho() {
  const cloudGroupChirho = new THREE.Group();

  for (let i = 0; i < 8; i++) {
    const cloudPartGeometryChirho = new THREE.SphereGeometry(
      2 + Math.random() * 3,
      8,
      6,
    );
    const cloudPartMaterialChirho = new THREE.MeshLambertMaterial({
      color: 0xffffff,
      transparent: true,
      opacity: 0.8,
    });
    const cloudPartChirho = new THREE.Mesh(
      cloudPartGeometryChirho,
      cloudPartMaterialChirho,
    );

    cloudPartChirho.position.x = (Math.random() - 0.5) * 8;
    cloudPartChirho.position.y = (Math.random() - 0.5) * 3;
    cloudPartChirho.position.z = (Math.random() - 0.5) * 8;

    cloudGroupChirho.add(cloudPartChirho);
  }

  return cloudGroupChirho;
}

function createPlayerCarChirho() {
  const carGroupChirho = new THREE.Group();

  const carBodyGeometryChirho = new THREE.BoxGeometry(2, 1, 4);
  const carBodyMaterialChirho = new THREE.MeshLambertMaterial({
    color: 0x0066cc,
  });
  const carBodyChirho = new THREE.Mesh(
    carBodyGeometryChirho,
    carBodyMaterialChirho,
  );
  carBodyChirho.position.y = 0.5;
  carBodyChirho.castShadow = true;
  carGroupChirho.add(carBodyChirho);

  for (let i = 0; i < 4; i++) {
    const wheelGeometryChirho = new THREE.CylinderGeometry(0.3, 0.3, 0.2, 8);
    const wheelMaterialChirho = new THREE.MeshLambertMaterial({
      color: 0x000000,
    });
    const wheelChirho = new THREE.Mesh(
      wheelGeometryChirho,
      wheelMaterialChirho,
    );
    wheelChirho.rotation.z = Math.PI / 2;
    wheelChirho.position.x = i % 2 === 0 ? -1.2 : 1.2;
    wheelChirho.position.z = i < 2 ? 1.5 : -1.5;
    wheelChirho.position.y = 0.3;
    carGroupChirho.add(wheelChirho);
  }

  playerCarChirho = carGroupChirho;
  sceneChirho.add(playerCarChirho);
}

function createDashboardChirho() {
  dashboardGroupChirho = new THREE.Group();

  const steeringWheelGeometryChirho = new THREE.TorusGeometry(0.4, 0.05, 8, 16);
  const steeringWheelMaterialChirho = new THREE.MeshLambertMaterial({
    color: 0x8b4513,
  });
  steeringWheelChirho = new THREE.Mesh(
    steeringWheelGeometryChirho,
    steeringWheelMaterialChirho,
  );
  steeringWheelChirho.position.set(0, 0.8, 0.5);
  steeringWheelChirho.rotation.x = -Math.PI / 6;

  const dashGeometryChirho = new THREE.BoxGeometry(3, 0.2, 1);
  const dashMaterialChirho = new THREE.MeshLambertMaterial({ color: 0x2f2f2f });
  dashboardChirho = new THREE.Mesh(dashGeometryChirho, dashMaterialChirho);
  dashboardChirho.position.set(0, 0.4, 0.8);

  const speedometerGeometryChirho = new THREE.CylinderGeometry(
    0.15,
    0.15,
    0.03,
    16,
  );
  const speedometerMaterialChirho = new THREE.MeshLambertMaterial({
    color: 0xffffff,
  });
  const speedometerChirho = new THREE.Mesh(
    speedometerGeometryChirho,
    speedometerMaterialChirho,
  );
  speedometerChirho.position.set(0.8, 0.45, 0.3);
  speedometerChirho.rotation.x = -Math.PI / 4;

  dashboardGroupChirho.add(steeringWheelChirho);
  dashboardGroupChirho.add(dashboardChirho);
  dashboardGroupChirho.add(speedometerChirho);

  playerCarChirho.add(dashboardGroupChirho);
}

function createTemptationCarsChirho() {
  for (let i = 0; i < 2; i++) {
    const temptationCarChirho = createTemptationCarChirho();
    temptationCarChirho.position.x = 3 + Math.random() * 5;
    temptationCarChirho.position.z = -50 - i * 80;
    temptationCarChirho.userData.temptationType =
      temptationTypesChirho[
        Math.floor(Math.random() * temptationTypesChirho.length)
      ];
    temptationCarChirho.userData.speed = 30 + Math.random() * 20;
    temptationCarsChirho.push(temptationCarChirho);
    sceneChirho.add(temptationCarChirho);
  }
}

function createOncomingCarsChirho() {
  for (let i = 0; i < 3; i++) {
    const oncomingCarChirho = createOncomingCarChirho();
    oncomingCarChirho.position.x = -3 - Math.random() * 5;
    oncomingCarChirho.position.z = -50 - i * 60;
    oncomingCarChirho.userData.temptationType =
      temptationTypesChirho[
        Math.floor(Math.random() * temptationTypesChirho.length)
      ];
    oncomingCarChirho.userData.speed = speedLimitChirho - 5;
    oncomingCarsChirho.push(oncomingCarChirho);
    sceneChirho.add(oncomingCarChirho);
    createTemptationLabelChirho(
      oncomingCarChirho.userData.temptationType,
      oncomingCarChirho,
      true,
    );
  }
}

function createOncomingCarChirho() {
  const carGroupChirho = new THREE.Group();

  const carBodyGeometryChirho = new THREE.BoxGeometry(2, 1, 4);
  const randomColorChirho =
    carColorsChirho[Math.floor(Math.random() * carColorsChirho.length)];
  const carBodyMaterialChirho = new THREE.MeshLambertMaterial({
    color: randomColorChirho,
  });
  const carBodyChirho = new THREE.Mesh(
    carBodyGeometryChirho,
    carBodyMaterialChirho,
  );
  carBodyChirho.position.y = 0.5;
  carBodyChirho.castShadow = true;
  carGroupChirho.add(carBodyChirho);

  for (let i = 0; i < 4; i++) {
    const wheelGeometryChirho = new THREE.CylinderGeometry(0.3, 0.3, 0.2, 8);
    const wheelMaterialChirho = new THREE.MeshLambertMaterial({
      color: 0x000000,
    });
    const wheelChirho = new THREE.Mesh(
      wheelGeometryChirho,
      wheelMaterialChirho,
    );
    wheelChirho.rotation.z = Math.PI / 2;
    wheelChirho.position.x = i % 2 === 0 ? -1.2 : 1.2;
    wheelChirho.position.z = i < 2 ? 1.5 : -1.5;
    wheelChirho.position.y = 0.3;
    carGroupChirho.add(wheelChirho);
  }

  carGroupChirho.rotation.y = Math.PI;
  return carGroupChirho;
}

function createTemptationCarChirho() {
  const carGroupChirho = new THREE.Group();

  const carBodyGeometryChirho = new THREE.BoxGeometry(2, 1, 4);
  const randomColorChirho =
    carColorsChirho[Math.floor(Math.random() * carColorsChirho.length)];
  const carBodyMaterialChirho = new THREE.MeshLambertMaterial({
    color: randomColorChirho,
  });
  const carBodyChirho = new THREE.Mesh(
    carBodyGeometryChirho,
    carBodyMaterialChirho,
  );
  carBodyChirho.position.y = 0.5;
  carBodyChirho.castShadow = true;
  carGroupChirho.add(carBodyChirho);

  for (let i = 0; i < 4; i++) {
    const wheelGeometryChirho = new THREE.CylinderGeometry(0.3, 0.3, 0.2, 8);
    const wheelMaterialChirho = new THREE.MeshLambertMaterial({
      color: 0x000000,
    });
    const wheelChirho = new THREE.Mesh(
      wheelGeometryChirho,
      wheelMaterialChirho,
    );
    wheelChirho.rotation.z = Math.PI / 2;
    wheelChirho.position.x = i % 2 === 0 ? -1.2 : 1.2;
    wheelChirho.position.z = i < 2 ? 1.5 : -1.5;
    wheelChirho.position.y = 0.3;
    carGroupChirho.add(wheelChirho);
  }

  return carGroupChirho;
}

function createTemptationLabelChirho(
  textChirho,
  carChirho,
  isOncomingChirho = false,
) {
  const canvasChirho = document.createElement("canvas");
  const contextChirho = canvasChirho.getContext("2d");
  canvasChirho.width = 512;
  canvasChirho.height = 128;

  contextChirho.fillStyle = "rgba(0, 0, 0, 0.8)";
  contextChirho.fillRect(0, 0, canvasChirho.width, canvasChirho.height);

  contextChirho.fillStyle = "white";
  contextChirho.font = "bold 48px Arial";
  contextChirho.textAlign = "center";
  contextChirho.fillText(
    textChirho,
    canvasChirho.width / 2,
    canvasChirho.height / 2 + 16,
  );

  const textureChirho = new THREE.CanvasTexture(canvasChirho);
  const materialChirho = new THREE.MeshBasicMaterial({
    map: textureChirho,
    transparent: true,
  });
  const geometryChirho = new THREE.PlaneGeometry(6, 1.5);
  const meshChirho = new THREE.Mesh(geometryChirho, materialChirho);

  if (isOncomingChirho) {
    meshChirho.position.set(0, 2.5, -2);
    meshChirho.rotation.y = Math.PI;
  } else {
    meshChirho.position.set(0, 2.5, 0);
  }
  carChirho.add(meshChirho);
}

function setupEventListenersChirho() {
  document.addEventListener("keydown", (event) => {
    switch (event.code) {
      case "ArrowUp":
      case "KeyW":
        keysChirho.up = true;
        break;
      case "ArrowDown":
      case "KeyS":
        keysChirho.down = true;
        break;
      case "ArrowLeft":
      case "KeyA":
        keysChirho.left = true;
        break;
      case "ArrowRight":
      case "KeyD":
        keysChirho.right = true;
        break;
      case "Space":
        event.preventDefault();
        playHornChirho();
        break;
    }
  });

  document.addEventListener("keyup", (event) => {
    switch (event.code) {
      case "ArrowUp":
      case "KeyW":
        keysChirho.up = false;
        break;
      case "ArrowDown":
      case "KeyS":
        keysChirho.down = false;
        break;
      case "ArrowLeft":
      case "KeyA":
        keysChirho.left = false;
        break;
      case "ArrowRight":
      case "KeyD":
        keysChirho.right = false;
        break;
      case "Space":
        break;
    }
  });

  window.addEventListener("resize", () => {
    cameraChirho.aspect = window.innerWidth / window.innerHeight;
    cameraChirho.updateProjectionMatrix();
    rendererChirho.setSize(window.innerWidth, window.innerHeight);
  });
}

function updatePlayerMovementChirho() {
  if (isGameOverChirho) return;

  if (keysChirho.up) {
    accelerationChirho = Math.min(accelerationChirho + 0.05, 0.8);
  } else if (keysChirho.down) {
    accelerationChirho = Math.max(accelerationChirho - 0.2, -0.5);
  } else {
    accelerationChirho *= 0.98;
  }

  speedChirho = Math.max(
    0,
    Math.min(speedChirho + accelerationChirho, maxSpeedChirho),
  );

  if (keysChirho.left && speedChirho > 0) {
    playerRotationChirho -= 0.02 * (speedChirho / 60);
    if (steeringWheelChirho) {
      steeringWheelChirho.rotation.z = Math.min(
        steeringWheelChirho.rotation.z + 0.02,
        Math.PI / 6,
      );
    }
  } else if (keysChirho.right && speedChirho > 0) {
    playerRotationChirho += 0.02 * (speedChirho / 60);
    if (steeringWheelChirho) {
      steeringWheelChirho.rotation.z = Math.max(
        steeringWheelChirho.rotation.z - 0.02,
        -Math.PI / 6,
      );
    }
  } else if (steeringWheelChirho) {
    steeringWheelChirho.rotation.z *= 0.9;
  }

  playerCarChirho.position.x +=
    Math.sin(playerRotationChirho) * speedChirho * 0.01;
  playerCarChirho.position.x = Math.max(
    Math.min(playerCarChirho.position.x, 6),
    -6,
  );
  playerCarChirho.rotation.y = -playerRotationChirho;

  const roadCurveInfluenceChirho = Math.sin(Date.now() * 0.0003) * 0.005;
  roadCurveChirho += roadCurveInfluenceChirho;

  cameraChirho.rotation.z =
    -playerRotationChirho * 0.3 + roadCurveInfluenceChirho * 2;

  playerCarChirho.position.x += roadCurveInfluenceChirho * speedChirho * 0.1;
  playerCarChirho.position.x = Math.max(
    Math.min(playerCarChirho.position.x, 6),
    -6,
  );

  updateSpiritualConditionChirho();
}

function updateSpiritualConditionChirho() {
  const isSpeedingChirho = speedChirho > speedLimitChirho;
  const speedExcessChirho = Math.max(0, speedChirho - speedLimitChirho);

  if (isSpeedingChirho) {
    fleshSowingChirho = Math.min(
      fleshSowingChirho + 0.1 + speedExcessChirho * 0.01,
      100,
    );
    document.getElementById("driving-status-chirho").textContent =
      "Speeding - Sowing to Flesh";
    document.getElementById("driving-status-chirho").style.color = "#ff4444";
  } else {
    spiritTimeChirho += 1 / 60;
    spiritSowingChirho = Math.floor(spiritTimeChirho);
    fleshSowingChirho = Math.max(fleshSowingChirho - 0.02, 0);
    document.getElementById("driving-status-chirho").textContent =
      "Good Driving - Sowing to Spirit";
    document.getElementById("driving-status-chirho").style.color = "#44ff44";
  }

  checkCollisionsChirho();
  checkOncomingCollisionsChirho();

  if (fleshSowingChirho >= 100) {
    gameOverChirho();
  }
}

function checkCollisionsChirho() {
  for (let temptationCarChirho of temptationCarsChirho) {
    const distanceChirho = playerCarChirho.position.distanceTo(
      temptationCarChirho.position,
    );
    if (distanceChirho < 3) {
      fleshSowingChirho = Math.min(fleshSowingChirho + 10, 100);
      temptationCarChirho.position.z = -100;
      temptationCarChirho.position.x = 3 + Math.random() * 5;
      playCrashSoundChirho();
    }
  }
}

function checkOncomingCollisionsChirho() {
  for (let oncomingCarChirho of oncomingCarsChirho) {
    const distanceChirho = playerCarChirho.position.distanceTo(
      oncomingCarChirho.position,
    );
    if (distanceChirho < 3) {
      fleshSowingChirho = Math.min(fleshSowingChirho + 15, 100);
      oncomingCarChirho.position.z = -150;
      oncomingCarChirho.position.x = -3 - Math.random() * 5;
      playCrashSoundChirho();
    }
  }
}

function updateTemptationCarsChirho() {
  for (let temptationCarChirho of temptationCarsChirho) {
    temptationCarChirho.position.z +=
      speedChirho * 0.02 + temptationCarChirho.userData.speed * 0.01;

    if (temptationCarChirho.position.z > 20) {
      temptationCarChirho.position.z = -200;
      temptationCarChirho.position.x = 3 + Math.random() * 5;
      const newTemptationChirho =
        temptationTypesChirho[
          Math.floor(Math.random() * temptationTypesChirho.length)
        ];
      temptationCarChirho.userData.temptationType = newTemptationChirho;

      temptationCarChirho.children.forEach((childChirho) => {
        if (childChirho.material && childChirho.material.map) {
          temptationCarChirho.remove(childChirho);
        }
      });
      createTemptationLabelChirho(newTemptationChirho, temptationCarChirho);
    }
  }
}

function updateOncomingCarsChirho() {
  for (let oncomingCarChirho of oncomingCarsChirho) {
    oncomingCarChirho.position.z +=
      speedChirho * 0.02 - oncomingCarChirho.userData.speed * 0.01;

    if (oncomingCarChirho.position.z > 20) {
      oncomingCarChirho.position.z = -180;
      oncomingCarChirho.position.x = -3 - Math.random() * 5;
      const newTemptationChirho =
        temptationTypesChirho[
          Math.floor(Math.random() * temptationTypesChirho.length)
        ];
      oncomingCarChirho.userData.temptationType = newTemptationChirho;

      oncomingCarChirho.children.forEach((childChirho) => {
        if (childChirho.material && childChirho.material.map) {
          oncomingCarChirho.remove(childChirho);
        }
      });
      createTemptationLabelChirho(newTemptationChirho, oncomingCarChirho, true);
    }
  }
}

function updateRoadChirho() {
  if (speedChirho > 0) {
    for (let segmentChirho of roadSegmentsChirho) {
      segmentChirho.position.z += speedChirho * 0.02;
      if (segmentChirho.position.z > 50) {
        segmentChirho.position.z = -1150;
        const curveAmountChirho = Math.sin(segmentChirho.position.z * 0.015) * 4;
        segmentChirho.position.x = curveAmountChirho;
        segmentChirho.rotation.y = curveAmountChirho * 0.03;
      }
    }

    for (let treeChirho of treesChirho) {
      treeChirho.position.z += speedChirho * 0.02;
      if (treeChirho.position.z > 40) {
        treeChirho.position.z = -360;
        const sideChirho = Math.random() > 0.5 ? 1 : -1;
        treeChirho.position.x = sideChirho * (15 + Math.random() * 20);
      }
    }
  }
}

function updateHUDChirho() {
  document.getElementById("speed-display-chirho").textContent =
    Math.round(speedChirho);
  document.getElementById("speed-limit-display-chirho").textContent =
    speedLimitChirho;

  document.getElementById("spirit-fill-chirho").textContent =
    spiritSowingChirho + "s";
  document.getElementById("flesh-fill-chirho").style.width =
    fleshSowingChirho + "%";
}

function gameOverChirho() {
  isGameOverChirho = true;
  document.getElementById("game-over-chirho").style.display = "block";
}

function restartGameChirho() {
  isGameOverChirho = false;
  speedChirho = 0;
  accelerationChirho = 0;
  spiritSowingChirho = 0;
  spiritTimeChirho = 0;
  fleshSowingChirho = 30;
  playerCarChirho.position.set(0, 0, 0);
  document.getElementById("game-over-chirho").style.display = "none";

  playerRotationChirho = 0;
  roadCurveChirho = 0;
  cameraChirho.rotation.z = 0;
  for (let i = 0; i < temptationCarsChirho.length; i++) {
    temptationCarsChirho[i].position.x = (Math.random() - 0.5) * 15;
    temptationCarsChirho[i].position.z = -50 - i * 80;

    temptationCarsChirho[i].children.forEach((childChirho) => {
      if (childChirho.material && childChirho.material.map) {
        temptationCarsChirho[i].remove(childChirho);
      }
    });

    const temptationTypeChirho =
      temptationTypesChirho[
        Math.floor(Math.random() * temptationTypesChirho.length)
      ];
    temptationCarsChirho[i].userData.temptationType = temptationTypeChirho;
    createTemptationLabelChirho(temptationTypeChirho, temptationCarsChirho[i]);
  }
}

function gameLoopChirho() {
  if (!isGameOverChirho) {
    updatePlayerMovementChirho();
    updateTemptationCarsChirho();
    updateOncomingCarsChirho();
    updateRoadChirho();
    updateHUDChirho();
  }

  rendererChirho.render(sceneChirho, cameraChirho);
  requestAnimationFrame(gameLoopChirho);
}

function setupAudioChirho() {
  synthChirho = new Tone.Synth().toDestination();
  crashSynthChirho = new Tone.NoiseSynth({
    noise: { type: "white" },
    envelope: { attack: 0.01, decay: 0.3, sustain: 0, release: 0.1 },
  }).toDestination();
  hornSynthChirho = new Tone.Synth({
    oscillator: { type: "square" },
    envelope: { attack: 0.01, decay: 0.1, sustain: 0.5, release: 0.1 },
  }).toDestination();
}

function playCrashSoundChirho() {
  if (crashSynthChirho) {
    crashSynthChirho.triggerAttackRelease("16n");
  }
}

function playHornChirho() {
  if (hornSynthChirho) {
    hornSynthChirho.triggerAttackRelease("A4", "0.2");
    setTimeout(() => {
      hornSynthChirho.triggerAttackRelease("A4", "0.2");
    }, 250);
  }
}

window.addEventListener("load", initGameChirho);
EOF

    # Echo a confirmation message to the terminal.
    echo "✅ Created new file: $JS_FILE_CHIRHO HALLELUJAH"

else
    # If the file already exists, print a different message.
    echo "☑️ JavaScript file already exists at $JS_FILE_CHIRHO. No changes made. Hallelujah!"
fi

echo ""
echo "🎮 Christian Car Game - Sowing to the Spirit is ready!"
echo "📁 Game files are located in: $TARGET_DIR_CHIRHO"
echo "🌐 Open index-chirho.html in your web browser to play"
echo ""
echo "Game Instructions:"
echo "🚗 Use WASD or Arrow Keys to drive"
echo "📯 Press SPACEBAR for horn (beep beep)"
echo "⚡ Stay under the speed limit (65 mph)"
echo "🚫 Avoid cars with temptation labels"
echo "✝️ Sow to the Spirit by driving well"
echo "💀 Don''t let flesh sowing reach 100%"
echo ""
echo "God bless your driving! HALLELUJAH! 🙏"
',
  'bash',
  'bash payload-week07-session1-chirho.sh',
  71,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 7 Session 2 (payload-week07-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'BA9IU3EHuQuiJLMjQRO0C',
  'Week 7 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 07, Session 2',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world... (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 07, Session 2
# This script creates the instructional HTML page and the console quiz program.

# --- Output initial messages ---
echo "Payload for Week 07 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-07-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/program-chirho.js"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- Create the HTML file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - A New Beginning</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { background-color: transparent; padding: 3px 6px; border-radius: 4px; font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>A New Beginning: Console Programming 🖥️</h1>
        <p>Hallelujah! So far, all of our work has been in the browser. Today, we are taking a new step on our journey. We will be writing a program that runs directly in the <strong>console</strong>, or <strong>terminal</strong>. This is how many powerful server applications and tools are built.</p>
        <p class="verse-chirho">"Therefore if any man be in Christ, he is a new creature: old things are passed away; behold, all things are become new." - 2 Corinthians 5:17</p>
        <p>Not as dramatic as how this verse describes a new beginning, but we are starting a new chapter in our programming skills. Follow the steps below to run your first console application!</p>
        <h2>How to Run the Program</h2>
        <p>Open your Linux terminal and follow these two steps:</p>
        <h4>Step 1: Navigate to the correct directory</h4>
        <p>Copy and paste this command and press Enter. This moves you into the folder where our new program lives.</p>
        <pre><code>cd Downloads/cp-chirho/week-07-chirho/session-2-chirho</code></pre>
        <h4>Step 2: Run the program with Bun</h4>
        <p>Now, type this command and press Enter. This will start our Bible Character Quiz right in your terminal!</p>
        <pre><code>bun run program-chirho.js</code></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
else
    echo "☑️ Instructional file already exists at $TARGET_HTML_FILE_CHIRHO."
fi

# --- Create the JS console program ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world..." (John 3:16 KJV)

const quizDataChirho = [
    { nameChirho: "David", descriptionChirho: "I was a shepherd boy who defeated a giant with a sling and became a great king of Israel." },
    { nameChirho: "Esther", descriptionChirho: "I was a brave Jewish queen who risked my life to save my people from a wicked plan." },
    { nameChirho: "Paul", descriptionChirho: "I was once a persecutor of Christians, but I met Jesus on the road to Damascus." },
    { nameChirho: "Noah", descriptionChirho: "God commanded me to build a massive ark to save my family and the animals from a great flood." },
    { nameChirho: "Mary", descriptionChirho: "I was a young woman chosen by God to be the mother of His Son, Jesus." },
    { nameChirho: "Jonah", descriptionChirho: "I ran from God''s command and was swallowed by a great fish for three days." }
];

async function startGameChirho() {
    console.log("--- Hallelujah! Welcome to the ''Who Am I?'' Bible Quiz ---");

    let keepPlayingChirho = true;

    while (keepPlayingChirho) {
        const randomIndexChirho = Math.floor(Math.random() * quizDataChirho.length);
        const characterChirho = quizDataChirho[randomIndexChirho];
        let isCorrectChirho = false;

        console.log("\nHere is your clue:");
        console.log(`> ${characterChirho.descriptionChirho}`);

        for (let iChirho = 0; iChirho < 3; iChirho++) {
            const guessChirho = prompt(`Attempt ${iChirho + 1} of 3: Who am I? `);

            if (guessChirho.toLowerCase() === characterChirho.nameChirho.toLowerCase()) {
                console.log(`\nCorrect! It was ${characterChirho.nameChirho}. Hallelujah!`);
                isCorrectChirho = true;
                break;
            } else {
                console.log("Not quite. Try again!");
            }
        }

        if (!isCorrectChirho) {
            console.log(`\nThe correct answer was ${characterChirho.nameChirho}.`);
        }

        const playAgainResponseChirho = prompt("\nWould you like to play another round? (y/n) ");
        if (playAgainResponseChirho.toLowerCase() !== ''y'') {
            keepPlayingChirho = false;
        }
    }

    console.log("\nThank you for playing! God bless!");
}

startGameChirho();
EOF
    echo "✅ Created console program: $TARGET_JS_FILE_CHIRHO"
else
    echo "☑️ Console program already exists at $TARGET_JS_FILE_CHIRHO."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week07-session2-chirho.sh',
  72,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 7 Session 3 (payload-week07-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'XnCf6kTSKckWu5ZMHf7mL',
  'Week 7 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 07, Session 3',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world... (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 07, Session 3
# This script creates the console Prayer Journal application.

# --- Output initial messages ---
echo "Payload for Week 07 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-07-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/program-chirho.js"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- Create the HTML file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Your First Database</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { padding: 3px 6px; border-radius: 4px; font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Your First Database: The Prayer Journal 🙏</h1>
        <p>Hallelujah! Today we take a huge step. We are moving from data stored in our code to data stored in a real, persistent <strong>database file</strong>. Using <code>bun:sqlite</code>, our program will create and talk to a file named <code>journal-chirho.sqlite</code>. This means your data will be saved even after you close the terminal!</p>
        <p class="verse-chirho">"Be careful for nothing; but in every thing by prayer and supplication with thanksgiving let your requests be made known unto God." - Philippians 4:6</p>
        <p>This program is a tool to help us do just that. Follow the steps below to run your personal Prayer Journal.</p>
        <h2>How to Run the Program</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-07-chirho/session-3-chirho</code></pre>
        <h4>Step 2: Run the program with Bun</h4>
        <pre><code>bun run program-chirho.js</code></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
else
    echo "☑️ Instructional file already exists at $TARGET_HTML_FILE_CHIRHO."
fi

# --- Create the JS console program ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world..." (John 3:16 KJV)

import { Database } from "bun:sqlite";

const dbChirho = new Database("journal-chirho.sqlite");

// UPDATED: Added a new ''answered_at_chirho'' column to our table.
dbChirho.query(`
  CREATE TABLE IF NOT EXISTS prayers_chirho (
    id_chirho INTEGER PRIMARY KEY AUTOINCREMENT,
    request_chirho TEXT NOT NULL,
    status_chirho TEXT DEFAULT ''Pending'',
    timestamp_chirho DATETIME DEFAULT CURRENT_TIMESTAMP,
    answered_at_chirho DATETIME
  );
`).run();

function displayMenuChirho() {
    console.log("\n--- Prayer Journal Menu ---");
    console.log("1. View all prayer requests");
    console.log("2. Add a new prayer request");
    console.log("3. Mark a request as ''Answered''");
    console.log("4. Delete a request");
    console.log("5. Exit");
}

function viewPrayersChirho() {
    const allPrayersChirho = dbChirho.query("SELECT * FROM prayers_chirho ORDER BY timestamp_chirho DESC;").all();
    console.log("\n--- Your Prayer Requests ---");
    if (allPrayersChirho.length === 0) {
        console.log("Your journal is empty. Add a request!");
    } else {
        allPrayersChirho.forEach(prayerChirho => {
            const statusIndicatorChirho = prayerChirho.status_chirho === ''Answered'' ? ''✅'' : ''⏳'';
            // UPDATED: Display logic now includes dates.
            const createdDateChirho = new Date(prayerChirho.timestamp_chirho).toLocaleDateString();
            let prayerLineChirho = `${statusIndicatorChirho} [ID: ${prayerChirho.id_chirho}] - ${prayerChirho.request_chirho} (Prayed on: ${createdDateChirho})`;

            if (prayerChirho.answered_at_chirho) {
                const answeredDateChirho = new Date(prayerChirho.answered_at_chirho).toLocaleDateString();
                prayerLineChirho += ` | Answered on: ${answeredDateChirho}`;
            }

            console.log(prayerLineChirho);
        });
    }
}

function addPrayerChirho() {
    const newRequestChirho = prompt("What is your prayer request? ");
    if (newRequestChirho && newRequestChirho.trim() !== '''') {
        dbChirho.query("INSERT INTO prayers_chirho (request_chirho) VALUES (?);").run(newRequestChirho.trim());
        console.log("Request added. Hallelujah!");
    } else {
        console.log("No request entered.");
    }
}

function updatePrayerChirho() {
    viewPrayersChirho();
    const idToUpdateChirho = prompt("\nEnter the ID of the prayer to mark as ''Answered'': ");
    if (idToUpdateChirho) {
        // UPDATED: The query now also sets the ''answered_at_chirho'' timestamp.
        dbChirho.query("UPDATE prayers_chirho SET status_chirho = ''Answered'', answered_at_chirho = CURRENT_TIMESTAMP WHERE id_chirho = ?;").run(idToUpdateChirho);
        console.log(`Prayer ID ${idToUpdateChirho} if it exists, has been marked as answered. Praise God!`);
    }
}

function deletePrayerChirho() {
    viewPrayersChirho();
    const idToDeleteChirho = prompt("\nEnter the ID of the prayer to DELETE: ");
    if (idToDeleteChirho) {
        dbChirho.query("DELETE FROM prayers_chirho WHERE id_chirho = ?;").run(idToDeleteChirho);
        console.log(`Prayer ID ${idToDeleteChirho} if it exists, has been deleted.`);
    }
}

async function mainChirho() {
    console.log("Hallelujah! Welcome to your personal Prayer Journal.");

    let isRunningChirho = true;
    while (isRunningChirho) {
        displayMenuChirho();
        const choiceChirho = prompt("Choose an option (1-5): ");

        switch (choiceChirho) {
            case ''1'':
                viewPrayersChirho();
                break;
            case ''2'':
                addPrayerChirho();
                break;
            case ''3'':
                updatePrayerChirho();
                break;
            case ''4'':
                deletePrayerChirho();
                break;
            case ''5'':
                isRunningChirho = false;
                break;
            default:
                console.log("Invalid option. Please choose a number from 1 to 5.");
        }
    }

    console.log("\nGod bless you! Keep praying.");
    dbChirho.close();
}

mainChirho();
EOF
    echo "✅ Created console program: $TARGET_JS_FILE_CHIRHO"
else
    echo "☑️ Console program already exists at $TARGET_JS_FILE_CHIRHO."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week07-session3-chirho.sh',
  73,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 8 Session 1 (payload-week08-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'vPmacMOx_gs029V324vum',
  'Week 8 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 08, Session 1',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world... (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 08, Session 1
# This script creates the "Discipleship Journey" game with a separate SQL seed file.

# --- Output initial messages ---
echo "Payload for Week 08 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-08-chirho/session-1-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/program-chirho.js"
TARGET_SQL_FILE_CHIRHO="$TARGET_DIR_CHIRHO/seed-chirho.sql"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Create the HTML file (with CSS fix) ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Relational Databases</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Relational Databases: The Discipleship Journey 🗺️</h1>
        <p>Hallelujah! Today we learn the most powerful feature of SQL databases: <strong>relating tables together</strong>. We will build a game with two tables—one for <code>disciples</code> and one for <code>missions</code>—and link them using a <strong>Foreign Key</strong>. We will also "seed" our database from a separate <code>.sql</code> file, which is a common practice in professional development.</p>
        <p class="verse-chirho">"Go ye therefore, and teach all nations... teaching them to observe all things whatsoever I have commanded you..." - Matthew 28:19-20</p>
        <p>In our game, you will follow this great commission by sending disciples on missions. Follow the steps below to run the program.</p>
        <h2>How to Run the Program</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-08-chirho/session-1-chirho</code></pre>
        <h4>Step 2: Run the program with Bun</h4>
        <pre><code>bun run program-chirho.js</code></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
else
    echo "☑️ Instructional file already exists at $TARGET_HTML_FILE_CHIRHO."
fi

# --- 2. Create the SQL Seed file ---
if [[ ! -f "$TARGET_SQL_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_SQL_FILE_CHIRHO"
-- "For God so loved the world..." (John 3:16 KJV)
-- This file contains the initial data ("seed") for our database.

-- Insert the disciples with their traits
INSERT INTO disciples_chirho (name_chirho, trait_chirho) VALUES
(''daniellovesGOD08'', ''Devoted''),
(''elisan123'', ''Compassionate''),
(''Jesusisgreat-er'', ''Bold''),
(''KingDiligentBoy'', ''Diligent''),
(''Tarpley123'', ''Wise''),
(''LoveJesus'', ''Loving''),
(''ummongous'', ''Strong'');

-- Insert a dozen missions with required traits
INSERT INTO missions_chirho (description_chirho, required_trait_chirho) VALUES
(''Preach openly in the marketplace'', ''Bold''),
(''Organize a food drive for the poor'', ''Compassionate''),
(''Spend a night in prayer for the church'', ''Devoted''),
(''Transcribe ancient scrolls accurately'', ''Diligent''),
(''Advise the church elders on a difficult matter'', ''Wise''),
(''Welcome newcomers to the fellowship'', ''Loving''),
(''Help rebuild the city wall after a disaster'', ''Strong''),
(''Confront a false teacher with the truth'', ''Bold''),
(''Visit and comfort the sick and lonely'', ''Compassionate''),
(''Commit to a week of fasting and study'', ''Devoted''),
(''Carefully manage the church finances'', ''Diligent''),
(''Settle a dispute between two members'', ''Wise'');
EOF
    echo "✅ Created seed file: $TARGET_SQL_FILE_CHIRHO"
else
    echo "☑️ Seed file already exists at $TARGET_SQL_FILE_CHIRHO."
fi

# --- 3. Create the JS console program (updated with all fixes) ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world..." (John 3:16 KJV)

import { Database } from "bun:sqlite";
import { file } from "bun";

const dbChirho = new Database("discipleship-chirho.sqlite");

// --- Database Schema Setup ---
dbChirho.query(`
  CREATE TABLE IF NOT EXISTS missions_chirho (
    id_chirho INTEGER PRIMARY KEY AUTOINCREMENT,
    description_chirho TEXT NOT NULL,
    required_trait_chirho TEXT NOT NULL
  );
`).run();
dbChirho.query(`
  CREATE TABLE IF NOT EXISTS disciples_chirho (
    id_chirho INTEGER PRIMARY KEY AUTOINCREMENT,
    name_chirho TEXT NOT NULL,
    trait_chirho TEXT NOT NULL,
    mission_id_chirho INTEGER,
    FOREIGN KEY (mission_id_chirho) REFERENCES missions_chirho(id_chirho)
  );
`).run();

// --- Seed the Database (only if it''s empty) ---
async function seedDatabaseIfNeededChirho() {
    const discipleCountChirho = dbChirho.query("SELECT COUNT(*) as count FROM disciples_chirho;").get().count;
    if (discipleCountChirho === 0) {
        console.log("Database is empty. Seeding from seed-chirho.sql...");
        try {
            const seedSqlChirho = await file(''seed-chirho.sql'').text();
            dbChirho.exec(seedSqlChirho);
            console.log("Database seeded successfully. Hallelujah!");
        } catch (errorChirho) {
            console.error("Error reading or executing seed file:", errorChirho);
        }
    }
}

// --- Application Functions ---
function displayMenuChirho() {
    console.log("\n--- The Great Commission Menu ---");
    console.log("1. Assign a Disciple to a Mission");
    console.log("   (Choose an available disciple and send them on a mission)");
    console.log("2. View Current Assignments");
    console.log("   (See who is on a mission and who is available)");
    console.log("3. Complete a Mission");
    console.log("   (Free up a disciple who has finished their task)");
    console.log("4. Exit");
}

function viewAssignmentsChirho() {
    console.log("\n--- Current Disciple Assignments ---");
    const assignmentsChirho = dbChirho.query(`
        SELECT d.name_chirho, m.description_chirho
        FROM disciples_chirho d
        JOIN missions_chirho m ON d.mission_id_chirho = m.id_chirho;
    `).all();
    const unassignedChirho = dbChirho.query("SELECT name_chirho FROM disciples_chirho WHERE mission_id_chirho IS NULL;").all();
    if (assignmentsChirho.length === 0 && unassignedChirho.length === 0) {
        console.log("No disciples in the database."); return;
    }
    assignmentsChirho.forEach(assignmentChirho => console.log(`✅ ${assignmentChirho.name_chirho} is on mission: ${assignmentChirho.description_chirho}`));
    unassignedChirho.forEach(discipleChirho => console.log(`⏳ ${discipleChirho.name_chirho} is awaiting assignment.`));
}

function assignMissionChirho() {
    console.log("\n--- Assign a New Mission ---");
    const availableMissionsChirho = dbChirho.query("SELECT * FROM missions_chirho;").all();
    const availableDisciplesChirho = dbChirho.query("SELECT * FROM disciples_chirho WHERE mission_id_chirho IS NULL;").all();
    if (availableDisciplesChirho.length === 0) {
        console.log("All disciples are currently on missions!"); return;
    }
    console.log("Available Missions:");
    availableMissionsChirho.forEach(missionChirho => console.log(`[${missionChirho.id_chirho}] ${missionChirho.description_chirho} (Requires: ${missionChirho.required_trait_chirho})`));
    const missionIdChirho = prompt("Choose a mission ID: ");
    const chosenMissionChirho = availableMissionsChirho.find(missionChirho => missionChirho.id_chirho == missionIdChirho);
    if (!chosenMissionChirho) { console.log("Invalid Mission ID."); return; }

    console.log("\nAvailable Disciples:");
    availableDisciplesChirho.forEach(discipleChirho => console.log(`[${discipleChirho.id_chirho}] ${discipleChirho.name_chirho} (Trait: ${discipleChirho.trait_chirho})`));
    const discipleIdChirho = prompt(`Who will you send to ''${chosenMissionChirho.description_chirho}''? `);
    const chosenDiscipleChirho = availableDisciplesChirho.find(discipleChirho => discipleChirho.id_chirho == discipleIdChirho);
    if (!chosenDiscipleChirho) { console.log("Invalid Disciple ID."); return; }

    if (chosenDiscipleChirho.trait_chirho === chosenMissionChirho.required_trait_chirho) {
        console.log(`\n✅ Success! ${chosenDiscipleChirho.name_chirho}''s trait was a perfect match. Hallelujah!`);
    } else {
        console.log(`\n☑️ ${chosenDiscipleChirho.name_chirho} struggled but grew in wisdom.`);
    }
    dbChirho.query("UPDATE disciples_chirho SET mission_id_chirho = ? WHERE id_chirho = ?;").run(chosenMissionChirho.id_chirho, chosenDiscipleChirho.id_chirho);
}

function completeMissionChirho() {
     console.log("\n--- Complete a Mission ---");
     const assignedDisciplesChirho = dbChirho.query("SELECT * FROM disciples_chirho WHERE mission_id_chirho IS NOT NULL;").all();
     if(assignedDisciplesChirho.length === 0) { console.log("No disciples are on missions."); return; }
     assignedDisciplesChirho.forEach(discipleChirho => console.log(`[${discipleChirho.id_chirho}] ${discipleChirho.name_chirho}`));
     const discipleIdChirho = prompt("Enter the ID of the disciple whose mission is complete: ");
     const resultChirho = dbChirho.query("UPDATE disciples_chirho SET mission_id_chirho = NULL WHERE id_chirho = ?;").run(discipleIdChirho);
     if (resultChirho.changes > 0) {
        console.log("Disciple is now ready for a new assignment. Praise God!");
     } else {
        console.log("Invalid ID. No disciple found.");
     }
}

async function mainChirho() {
    await seedDatabaseIfNeededChirho();
    console.log("Hallelujah! Welcome to the Discipleship Journey.");
    let isRunningChirho = true;
    while (isRunningChirho) {
        displayMenuChirho();
        const choiceChirho = prompt("> Choose an option (1-4): ");
        switch (choiceChirho) {
            case ''1'': assignMissionChirho(); break;
            case ''2'': viewAssignmentsChirho(); break;
            case ''3'': completeMissionChirho(); break;
            case ''4'': isRunningChirho = false; break;
            default: console.log("Invalid option.");
        }
    }
    console.log("\nGo and make disciples of all nations! God bless!");
    dbChirho.close();
}

mainChirho();
EOF
    echo "✅ Created console program: $TARGET_JS_FILE_CHIRHO"
else
    echo "☑️ Console program already exists at $TARGET_JS_FILE_CHIRHO."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week08-session1-chirho.sh',
  81,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 8 Session 2 (payload-week08-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'UFnkcV4MezKeczozYZg0-',
  'Week 8 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 08, Session 2',
  '1.0.0',
  '#!/bin/bash
# For God so loved the world... (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 08, Session 2
# This script creates the "Cloud of Witnesses" console database application.

# --- Output initial messages ---
echo "Payload for Week 08 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-08-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/program-chirho.js"
TARGET_SQL_FILE_CHIRHO="$TARGET_DIR_CHIRHO/seed-chirho.sql"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Create the HTML file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Sonshine Programming Class - Many-to-Many Relationships</title>
<style>
body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
#container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
h1 { color: #1e3a8a; text-align: center; }
p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
code { font-family: ''Courier New'', Courier, monospace; }
pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
</style></head><body><div id="container-chirho">
<h1>Many-to-Many: The Great Cloud of Witnesses ☁️</h1>
<p>Hallelujah! Today we will build a database to track the great "cloud of witnesses" from the Bible. We will learn about <strong>many-to-many relationships</strong>, where a character can be part of many events, and an event can have many characters. To do this, we need a third table, called a <strong>join table</strong>, that acts as a bridge.</p>
<p class="verse-chirho">"Wherefore seeing we also are compassed about with so great a cloud of witnesses, let us lay aside every weight, and the sin which doth so easily beset us, and let us run with patience the race that is set before us," - Hebrews 12:1</p>
<p>In this program, you will add characters and events to build a timeline of faith. Follow the steps below to run the program.</p>
<h2>How to Run the Program</h2>
<h4>Step 1: Navigate to the correct directory</h4><pre><code>cd Downloads/cp-chirho/week-08-chirho/session-2-chirho</code></pre>
<h4>Step 2: Run the program with Bun</h4><pre><code>bun run program-chirho.js</code></pre>
</div></body></html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the SQL Seed file ---
if [[ ! -f "$TARGET_SQL_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_SQL_FILE_CHIRHO"
-- "For God so loved the world..." (John 3:16 KJV)
INSERT INTO characters_chirho (name_chirho) VALUES (''Adam''), (''Eve''), (''Noah''), (''Abraham''), (''Moses''), (''David''), (''Mary'');
INSERT INTO events_chirho (name_chirho) VALUES (''The Garden of Eden''), (''The Great Flood''), (''The Exodus from Egypt''), (''Defeat of Goliath''), (''The Birth of Jesus'');
EOF
    echo "✅ Created seed file: $TARGET_SQL_FILE_CHIRHO"
fi

# --- 3. Create the JS console program (updated) ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world..." (John 3:16 KJV)

import { Database } from "bun:sqlite";
import { file } from "bun";

const dbChirho = new Database("witnesses-chirho.sqlite");

dbChirho.run(`CREATE TABLE IF NOT EXISTS characters_chirho ( id_chirho INTEGER PRIMARY KEY, name_chirho TEXT NOT NULL UNIQUE );`);
dbChirho.run(`CREATE TABLE IF NOT EXISTS events_chirho ( id_chirho INTEGER PRIMARY KEY, name_chirho TEXT NOT NULL UNIQUE );`);
dbChirho.run(`
  CREATE TABLE IF NOT EXISTS character_event_chirho (
    character_id_chirho INTEGER, event_id_chirho INTEGER,
    FOREIGN KEY (character_id_chirho) REFERENCES characters_chirho(id_chirho),
    FOREIGN KEY (event_id_chirho) REFERENCES events_chirho(id_chirho),
    PRIMARY KEY (character_id_chirho, event_id_chirho)
  );
`);

async function seedDatabaseIfNeededChirho() {
    const characterCountChirho = dbChirho.query("SELECT COUNT(*) as count FROM characters_chirho;").get().count;
    if (characterCountChirho === 0) {
        console.log("Database is empty. Seeding from seed-chirho.sql...");
        try {
            const seedSqlChirho = await file(''seed-chirho.sql'').text();
            dbChirho.exec(seedSqlChirho);
            console.log("Database seeded successfully. Hallelujah!");
        } catch (errorChirho) { console.error("Error executing seed file:", errorChirho); }
    }
}

function displayMenuChirho() {
    console.log("\n--- Cloud of Witnesses Dashboard ---");

    // Display current characters
    const allCharactersChirho = dbChirho.query("SELECT name_chirho FROM characters_chirho;").all();
    console.log("\nWitnesses in the Cloud:");
    if (allCharactersChirho.length > 0) {
        console.log(allCharactersChirho.map(charChirho => charChirho.name_chirho).join('', ''));
    } else {
        console.log("(None yet)");
    }

    // Display current events
    const allEventsChirho = dbChirho.query("SELECT name_chirho FROM events_chirho;").all();
    console.log("\nRecorded Events:");
    if (allEventsChirho.length > 0) {
        console.log(allEventsChirho.map(eventChirho => eventChirho.name_chirho).join('', ''));
    } else {
        console.log("(None yet)");
    }

    console.log("\n--- Menu Options ---");
    console.log("1. Add a New Witness (Character)");
    console.log("2. Add a New Event");
    console.log("3. Link a Witness to an Event");
    console.log("4. View Timeline (See who was at what event)");
    console.log("5. Exit");
}

function addWitnessChirho() {
    const nameChirho = prompt("Enter the name of the new witness: ");
    if (nameChirho) {
        try {
            dbChirho.query("INSERT INTO characters_chirho (name_chirho) VALUES (?);").run(nameChirho);
            console.log(`Added ${nameChirho} to the great cloud of witnesses!`);
        } catch (errorChirho) { console.log(`${nameChirho} is already in the database.`); }
    }
}

function addEventChirho() {
    const nameChirho = prompt("Enter the name of the new event: ");
    if (nameChirho) {
        try {
            dbChirho.query("INSERT INTO events_chirho (name_chirho) VALUES (?);").run(nameChirho);
            console.log(`Added the event ''${nameChirho}'' to the timeline.`);
        } catch (errorChirho) { console.log(`The event ''${nameChirho}'' is already in the database.`); }
    }
}

function linkWitnessToEventChirho() {
    const charactersChirho = dbChirho.query("SELECT * FROM characters_chirho;").all();
    console.log("\nWitnesses:");
    charactersChirho.forEach(characterChirho => console.log(`[${characterChirho.id_chirho}] ${characterChirho.name_chirho}`));
    const characterIdChirho = prompt("Choose a witness ID: ");

    const eventsChirho = dbChirho.query("SELECT * FROM events_chirho;").all();
    console.log("\nEvents:");
    eventsChirho.forEach(eventChirho => console.log(`[${eventChirho.id_chirho}] ${eventChirho.name_chirho}`));
    const eventIdChirho = prompt("Choose an event ID to link them to: ");

    try {
        dbChirho.query("INSERT INTO character_event_chirho (character_id_chirho, event_id_chirho) VALUES (?, ?);").run(characterIdChirho, eventIdChirho);
        console.log("Successfully linked witness to event!");
    } catch (errorChirho) { console.log("That link already exists or an ID was invalid."); }
}

function viewTimelineChirho() {
    console.log("\n--- The Great Cloud of Witnesses ---");
    const eventsChirho = dbChirho.query("SELECT * FROM events_chirho;").all();
    eventsChirho.forEach(eventChirho => {
        console.log(`\n📜 Event: ${eventChirho.name_chirho}`);
        const witnessesChirho = dbChirho.query(`
            SELECT c.name_chirho FROM characters_chirho c
            JOIN character_event_chirho ce ON c.id_chirho = ce.character_id_chirho
            WHERE ce.event_id_chirho = ?;
        `).all(eventChirho.id_chirho);

        if (witnessesChirho.length > 0) {
            witnessesChirho.forEach(witnessChirho => console.log(`  - ${witnessChirho.name_chirho}`));
        } else {
            console.log("  (No witnesses linked to this event yet)");
        }
    });
}

async function mainChirho() {
    await seedDatabaseIfNeededChirho();
    console.log("Hallelujah! Welcome to the timeline of faith.");
    let isRunningChirho = true;
    while (isRunningChirho) {
        displayMenuChirho();
        const choiceChirho = prompt("> Choose an option (1-5): ");
        switch (choiceChirho) {
            case ''1'': addWitnessChirho(); break;
            case ''2'': addEventChirho(); break;
            case ''3'': linkWitnessToEventChirho(); break;
            case ''4'': viewTimelineChirho(); break;
            case ''5'': isRunningChirho = false; break;
            default: console.log("Invalid option.");
        }
    }
    console.log("\nRemember the great cloud of witnesses who have gone before. God bless!");
    dbChirho.close();
}

mainChirho();
EOF
    echo "✅ Created console program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week08-session2-chirho.sh',
  82,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 9 Session 1 (payload-week09-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'B2NIyiE-D0gB2kFhov9g0',
  'Week 9 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 09, Session 1',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 09, Session 1
# This script creates an interactive Bun web server application that listens on all network interfaces.

# --- Output initial messages ---
echo "Payload for Week 09 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-09-chirho/session-1-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/server-chirho.js"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Create the HTML instructional file (updated) ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Your First Web Server</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e2b3b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Your First Web Server: A Light on a Hill ✨</h1>
        <p>Hallelujah! Today we''re building our very first **web server** using Bun. A web server is a program that runs in the console and "serves" web pages to any browser that asks for one. Our server will act as a light for others to see.</p>
        <p class="verse-chirho">"Let your light so shine before men, that they may see your good works, and glorify your Father which is in heaven." - Matthew 5:16</p>
        <p>Our simple server will count how many times its "light" (the webpage) has been seen by visitors. Follow the steps below to run it!</p>

        <h2>How to Run the Server</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-09-chirho/session-1-chirho</code></pre>

        <h4>Step 2: Start the server with Bun</h4>
        <p>This command will start the program. **It will first ask you to name your server!** After you type a name and press Enter, the server will start running.</p>
        <pre><code>bun run server-chirho.js</code></pre>

        <h4>Step 3: Visit your new website!</h4>
        <p>The console will print a list of links. The <code>http://localhost:8000</code> link will work on this computer. You can also try using the other ''Network'' links from your phone or another computer if they are on the same Wi-Fi network!</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the Bun server program (refactored) ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { networkInterfaces } from "os";

// --- State and Configuration ---
const serverNameChirho = prompt("What would you like to name your light? (e.g., ''The Lighthouse'', ''My Beacon'') ") || "A Light on a Hill";
let visitCountChirho = 0;

// --- Core Functions ---

/**
 * This function generates the HTML page that will be sent to the browser.
 * It uses the server name and the current visit count.
 */
function generateHtmlResponseChirho() {
  return `
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <title>${serverNameChirho}</title>
      <style>
        body { font-family: system-ui, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; background-color: #1a202c; color: #edf2f7; text-align: center; }
        .container-chirho { max-width: 600px; padding: 40px; background-color: #2d3748; border-radius: 15px; box-shadow: 0 10px 25px rgba(0,0,0,0.5); }
        .verse-chirho { font-style: italic; font-size: 1.2em; color: #a0aec0; }
        .counter-chirho { font-size: 5em; font-weight: bold; color: #f6e05e; margin: 20px 0; }
      </style>
    </head>
    <body>
      <div class="container-chirho">
        <h1>${serverNameChirho} ✨</h1>
        <p class="verse-chirho">"Let your light so shine before men, that they may see your good works, and glorify your Father which is in heaven."</p>
        <p>This light has been seen:</p>
        <div class="counter-chirho">${visitCountChirho}</div>
        <p>times. Hallelujah!</p>
      </div>
    </body>
    </html>
  `;
}

/**
 * This is the main request handler. Bun calls this function for every incoming request.
 */
function fetchChirho(requestChirho) {
  visitCountChirho++;
  const htmlResponseChirho = generateHtmlResponseChirho();
  return new Response(htmlResponseChirho, {
    headers: { "Content-Type": "text/html" },
  });
}

/**
 * This is the error handler. Bun calls this if something goes wrong.
 */
function errorChirho(errorParameterChirho) {
  return new Response(`<pre>${errorParameterChirho}\n${errorParameterChirho.stack}</pre>`, {
    headers: { "Content-Type": "text/html" },
  });
}

/**
 * This function finds and prints all available network addresses for the server.
 */
function printInterfacesChirho(serverParameterChirho) {
    console.log(`Hallelujah! Your light, ''${serverNameChirho}'', is shining.`);
    console.log(`You can visit it from this computer or any other device on the same network using these addresses:`);
    console.log(`- Local: http://localhost:${serverParameterChirho.port}`);

    const netsChirho = networkInterfaces();
    for (const nameChirho of Object.keys(netsChirho)) {
        for (const netChirho of netsChirho[nameChirho]) {
            if (netChirho.family === ''IPv4'') {
                console.log(`- Network (${nameChirho}): http://${netChirho.address}:${serverParameterChirho.port}`);
            }
        }
    }
}


// --- Server Initialization ---
const serverChirho = Bun.serve({
  hostname: "0.0.0.0",
  port: 8000,
  fetch: fetchChirho, // Using our external function
  error: errorChirho  // Using our external function
});

// Print the startup message with all available addresses.
printInterfacesChirho(serverChirho);
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week09-session1-chirho.sh',
  91,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 9 Session 2 (payload-week09-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'xhXFthUfGdlxDFJBrhVG2',
  'Week 9 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 09, Session 2',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 09, Session 2
# This script creates a server-side Guestbook application using Bun and SQLite.

# --- Output initial messages ---
echo "Payload for Week 09 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-09-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/server-chirho.js"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - A Server-Side App</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e2b3b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        a { color: #3b82f6; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Server App: A Book of Remembrance 📖</h1>
        <p>Hallelujah! Today we will build a complete web application: a guestbook where visitors can sign their name. The server will store these names in a persistent SQLite database file.</p>
        <p class="verse-chirho">"Then they that feared the LORD spake often one to another: and the LORD hearkened, and heard it, and a book of remembrance was written before him for them that feared the LORD, and that thought upon his name." - Malachi 3:16</p>
        <p>Our guestbook will be our own digital "book of remembrance." Follow the steps below to run it!</p>

        <h2>How to Run the Server</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-09-chirho/session-2-chirho</code></pre>

        <h4>Step 2: Start the server with Bun</h4>
        <p>This command will start the server and create a <code>guestbook-chirho.sqlite</code> database file if one doesn''t exist.</p>
        <pre><code>bun run server-chirho.js</code></pre>

        <h4>Step 3: Visit the Guestbook!</h4>
        <p>Open your web browser and go to this address:</p>
        <pre><a href="http://localhost:8000" target="_blank">http://localhost:8000</a></pre>

        <h4>Step 4: Visit the Admin Panel</h4>
        <p>To manage the guestbook, go to the admin page. The password is <code>aleluya</code>.</p>
        <pre><a href="http://localhost:8000/admin-chirho" target="_blank">http://localhost:8000/admin-chirho</a></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the Bun server program (refactored) ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";

// --- Database Setup ---
const dbChirho = new Database("guestbook-chirho.sqlite");
dbChirho.run(`CREATE TABLE IF NOT EXISTS guestbook_chirho (id_chirho INTEGER PRIMARY KEY, name_chirho TEXT NOT NULL, timestamp_chirho DATETIME DEFAULT CURRENT_TIMESTAMP);`);

// --- HTML Generation Functions ---
function generateGuestbookPageChirho() {
    const entriesChirho = dbChirho.query("SELECT * FROM guestbook_chirho ORDER BY timestamp_chirho DESC;").all();
    let entriesHtmlChirho;
    if(entriesChirho.length === 0) {
      entriesHtmlChirho = "<p>The book of remembrance is empty. Be the first to sign!</p>";
    } else {
      entriesHtmlChirho = entriesChirho.map(entryChirho =>
          `<div class="entry-chirho"><strong>${entryChirho.name_chirho}</strong><span class="date-chirho"> signed on ${new Date(entryChirho.timestamp_chirho).toLocaleDateString()}</span></div>`
        ).join('''');
    }

    return `<!DOCTYPE html>
<html lang="en">
<head>
    <title>Book of Remembrance</title>
    <style>
        body {
            font-family: system-ui, sans-serif;
            background-color: #f0f4f8;
            color: #333;
            display: flex;
            justify-content: center;
            padding-top: 40px;
        }
        .container-chirho {
            width: 90%;
            max-width: 600px;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        h1 {
            color: #1e3a8a;
            text-align: center;
        }
        .entry-chirho {
            background: #e0e7ff;
            padding: 10px 15px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .date-chirho {
            font-size: 0.8em;
            color: #4338ca;
        }
        input[type=text], button {
            font-size: 16px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        form {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }
        button {
            background: #1e3a8a;
            color: white;
            cursor: pointer;
        }
        .admin-link {
            text-align: right;
            margin-top: 20px;
        }
        .admin-link a {
            color: #4338ca;
            text-decoration: none;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container-chirho">
        <div class="admin-link">
            <a href="/admin-chirho">Admin Panel</a>
        </div>
        <h1>A Book of Remembrance</h1>
        <p>Malachi 3:16</p>
        <div>${entriesHtmlChirho}</div>
        <form method="POST">
            <input type="text" name="nameChirho" placeholder="Sign your name..." required />
            <button type="submit">Sign the Book</button>
        </form>

    </div>
</body>
</html>`;
}

function generateAdminLoginPageChirho() {
    return `<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: system-ui;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: #1e2b3b;
        }
        form {
            background: #2d3748;
            padding: 40px;
            border-radius: 10px;
            color: white;
        }
        input, button {
            font-size: 16px;
            padding: 10px;
        }
    </style>
</head>
<body>
    <form method="POST">
        <h2>Admin Access</h2>
        <input type="password" name="passwordChirho" placeholder="Password">
        <button type="submit">Login</button>
    </form>
</body>
</html>`;
}

function generateAdminPageChirho() {
    const entriesChirho = dbChirho.query("SELECT * FROM guestbook_chirho ORDER BY timestamp_chirho DESC;").all();
    let entriesHtmlChirho = entriesChirho.map(entryChirho =>
        `<div class="entry-chirho">
            <span>${entryChirho.name_chirho}</span>
            <form method="POST">
                <input type="hidden" name="deleteIdChirho" value="${entryChirho.id_chirho}">
                <button>Delete</button>
            </form>
        </div>`
      ).join('''');
    return `<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Panel</title>
    <style>
        body {
            font-family: system-ui;
            background: #f0f4f8;
        }
        .container-chirho {
            max-width: 600px;
            margin: 20px auto;
        }
        .entry-chirho {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            background: white;
            margin-bottom: 5px;
        }
        button {
            background: red;
            color: white;
            cursor: pointer;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container-chirho">
        <h1>Admin Panel</h1>
        ${entriesHtmlChirho}
    </div>
</body>
</html>`;
}

// --- Request Handler Functions ---

function guestGETRequestChirho() {
    console.log("ACTION: Serving guestbook page (GET)");
    return new Response(generateGuestbookPageChirho(), { headers: { "Content-Type": "text/html" } });
}

async function guestPOSTRequestChirho(requestChirho) {
    const formDataChirho = await requestChirho.formData();
    const nameChirho = formDataChirho.get("nameChirho");
    if (nameChirho) {
      console.log(`ACTION: Adding new entry: ${nameChirho.toString()}`);
      dbChirho.query("INSERT INTO guestbook_chirho (name_chirho) VALUES (?);").run(nameChirho.toString());
    }
    return new Response(null, { status: 302, headers: { "Location": "/" } });
}

function adminGETRequestChirho() {
    console.log("ACTION: Serving admin login page (GET)");
    return new Response(generateAdminLoginPageChirho(), { headers: { "Content-Type": "text/html" } });
}

async function adminPOSTRequestChirho(requestChirho) {
    const formDataChirho = await requestChirho.formData();
    if (formDataChirho.has("deleteIdChirho")) {
        return handleDeleteChirho(formDataChirho);
    } else if (formDataChirho.has("passwordChirho")) {
        return handlePasswordChirho(formDataChirho);
    } else {
        return adminGETRequestChirho();
    }
}

function handleDeleteChirho(formDataChirho) {
    const idToDeleteChirho = formDataChirho.get("deleteIdChirho");
    console.log(`ACTION: Deleting entry with ID: ${idToDeleteChirho}`);
    dbChirho.query("DELETE FROM guestbook_chirho WHERE id_chirho = ?;").run(idToDeleteChirho.toString());
    return new Response(generateAdminPageChirho(), { headers: { "Content-Type": "text/html" } });
}

function handlePasswordChirho(formDataChirho) {
    const passwordChirho = formDataChirho.get("passwordChirho");
    if (passwordChirho === "aleluya") {
        console.log("ACTION: Admin login successful");
        return new Response(generateAdminPageChirho(), { headers: { "Content-Type": "text/html" } });
    } else {
        console.log("ACTION: Admin login failed");
        return adminGETRequestChirho();
    }
}

// --- Main Server Fetch Router ---
async function fetchChirho(requestChirho) {
    const urlChirho = new URL(requestChirho.url);

    if (urlChirho.pathname === "/") {
      if (requestChirho.method === "POST") {
        return await guestPOSTRequestChirho(requestChirho);
      } else {
        return guestGETRequestChirho();
      }
    }

    if (urlChirho.pathname === "/admin-chirho") {
      if (requestChirho.method === "POST") {
        return await adminPOSTRequestChirho(requestChirho);
      } else {
        return adminGETRequestChirho();
      }
    }

    console.log(`ACTION: 404 Not Found for path: ${urlChirho.pathname}`);
    return new Response("Page not found.", { status: 404 });
}

function errorChirho(errorParameterChirho) {
    console.error(errorParameterChirho);
    return new Response("An error occurred.", { status: 500 });
}

// --- Server Initialization ---
const serverChirho = Bun.serve({
  port: 8000,
  fetch: fetchChirho,
  error: errorChirho,
});

console.log(`Hallelujah! The Book of Remembrance is open at http://localhost:${serverChirho.port}`);
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week09-session2-chirho.sh',
  92,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 9 Session 3 (payload-week09-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'tzJIT5lDZ1aFuHKCAtwAg',
  'Week 9 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 09, Session 3',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 09, Session 3
# This script creates a server-side Bible Reader application using Bun and SQLite.

# --- Output initial messages ---
echo "Payload for Week 09 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-09-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/server-chirho.js"
TARGET_DB_FILE_CHIRHO="$TARGET_DIR_CHIRHO/bible-chapters-chirho.sqlite"
DB_URL_CHIRHO="https://media-cp2025fe.sonshinewarriors.org/misc-chirho/bible-chapters-chirho.sqlite"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Download the database file if it doesn''t exist ---
if [[ ! -f "$TARGET_DB_FILE_CHIRHO" ]]; then
    echo "Downloading Bible database... (this may take a moment)"
    curl -L -o "$TARGET_DB_FILE_CHIRHO" "$DB_URL_CHIRHO"
    if [[ $? -eq 0 ]]; then
        echo "✅ Database downloaded successfully. Hallelujah!"
    else
        echo "❌ Error: Could not download the database. Please check your internet connection."
        exit 1
    fi
fi

# --- 2. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - A Bible Reader Server</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e2b3b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        a { color: #3b82f6; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Server App: A Living Word 📖</h1>
        <p>Hallelujah! Today we will build a complete web server that reads from a database to serve a simple Bible reader. This is a powerful example of how servers can provide dynamic content based on a user''s request.</p>
        <p class="verse-chirho">"Let the word of Christ dwell in you richly in all wisdom; teaching and admonishing one another in psalms and hymns and spiritual songs, singing with grace in your hearts to the Lord." - Colossians 3:16</p>
        <p>Our program will serve the Word of Christ directly to your browser. Follow the steps below to run it!</p>

        <h2>How to Run the Server</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-09-chirho/session-3-chirho</code></pre>

        <h4>Step 2: Start the server with Bun</h4>
        <p>This command will start the server. It uses the <code>bible-chapters-chirho.sqlite</code> file that was downloaded into this folder.</p>
        <pre><code>bun run server-chirho.js</code></pre>

        <h4>Step 3: Read the Bible!</h4>
        <p>Open your web browser and go to this address to see the index of all books and chapters.</p>
        <pre><a href="http://localhost:8000" target="_blank">http://localhost:8000</a></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 3. Create the Bun server program (with updated layout) ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";

const dbChirho = new Database("bible-chapters-chirho.sqlite");

function generateIndexPageChirho() {
    console.log("ACTION: Generating index page...");
    const chaptersQueryChirho = dbChirho.query("SELECT id_chirho, book_name_chirho, chapter_chirho FROM chapters_chirho ORDER BY id_chirho;");
    const allChaptersChirho = chaptersQueryChirho.all();

    const booksChirho = {};
    allChaptersChirho.forEach(chapterChirho => {
        if (!booksChirho[chapterChirho.book_name_chirho]) {
            booksChirho[chapterChirho.book_name_chirho] = [];
        }
        booksChirho[chapterChirho.book_name_chirho].push(chapterChirho);
    });

    let bookSectionsHtmlChirho = '''';
    for (const bookNameChirho in booksChirho) {
        let chapterLinksHtmlChirho = booksChirho[bookNameChirho].map(chapterChirho =>
            `<a class="chapter-link-chirho" href="/chapter/${chapterChirho.id_chirho}">${chapterChirho.chapter_chirho}</a>`
        ).join('''');
        bookSectionsHtmlChirho += `<div class="book-group-chirho"><h2>${bookNameChirho}</h2><div class="chapters-container-chirho">${chapterLinksHtmlChirho}</div></div>`;
    }

    return `
      <!DOCTYPE html><html lang="en"><head><title>The Living Word (KJV) - Index</title>
      <style>
        body{font-family:system-ui,sans-serif;background:#f0f4f8;color:#333;}
        .container-chirho{max-width:900px;margin:20px auto;background:white;padding:20px 40px;border-radius:10px;}
        h1{color:#1e3a8a; text-align:center;}
        .book-group-chirho{margin-bottom:2.5em; border-bottom: 2px solid #e0e7ff; padding-bottom:1.5em;}
        .chapters-container-chirho{display:flex; flex-wrap:wrap; gap:8px;}
        .chapter-link-chirho{
            display:inline-block;
            width: 3.5em;
            text-align: center;
            padding: 8px 0;
            border: 1px solid #d1d5db;
            border-radius: 4px;
            text-decoration: none;
            color: #3b82f6;
            background-color: #f9fafb;
            transition: background-color 0.2s;
        }
        .chapter-link-chirho:hover{background-color:#e0e7ff;}
      </style></head><body><div class="container-chirho"><h1>The Living Word</h1><div>${bookSectionsHtmlChirho}</div></div></body></html>
    `;
}

function generateChapterPageChirho(chapterIdChirho) {
    console.log(`ACTION: Fetching chapter with ID: ${chapterIdChirho}`);
    const chapterQueryChirho = dbChirho.query("SELECT * FROM chapters_chirho WHERE id_chirho = ?;");
    const chapterDataChirho = chapterQueryChirho.get(chapterIdChirho);

    if (!chapterDataChirho) { return new Response("Chapter not found.", { status: 404 }); }

    return `
      <!DOCTYPE html><html lang="en"><head><title>${chapterDataChirho.book_name_chirho} ${chapterDataChirho.chapter_chirho}</title>
      <style>
        @import url(''https://fonts.googleapis.com/css2?family=Lora:ital@0,400&display=swap'');
        body{font-family:''Lora'',serif;background:#fdfaf6;color:#333;line-height:1.8;}
        .container-chirho{max-width:800px;margin:20px auto;background:white;padding:40px;border-radius:5px;}
        h1{text-align:center;} a{color:#3b82f6;}
        p{margin-bottom:1.2em;} sup{color:#777;font-weight:bold;}
      </style></head><body><div class="container-chirho">
      <h1>${chapterDataChirho.book_name_chirho} ${chapterDataChirho.chapter_chirho}</h1>
      <div>${chapterDataChirho.content_chirho}</div><hr><p><a href="/">&larr; Back to Index</a></p>
      </div></body></html>
    `;
}

async function fetchChirho(requestChirho) {
    const urlChirho = new URL(requestChirho.url);

    if (urlChirho.pathname === "/") {
        return new Response(generateIndexPageChirho(), { headers: { "Content-Type": "text/html" } });
    }

    const chapterMatchChirho = urlChirho.pathname.match(/^\/chapter\/(\d+)/);
    if (chapterMatchChirho) {
        const chapterIdChirho = chapterMatchChirho[1];
        const chapterHtmlChirho = generateChapterPageChirho(chapterIdChirho);
        return new Response(chapterHtmlChirho, { headers: { "Content-Type": "text/html" } });
    }

    console.log(`ACTION: 404 Not Found for path: ${urlChirho.pathname}`);
    return new Response("Page not found.", { status: 404 });
}

function errorChirho(errorParameterChirho) {
    console.error(errorParameterChirho);
    return new Response("An error occurred on the server.", { status: 500 });
}

const serverChirho = Bun.serve({
  port: 8000,
  hostname: "0.0.0.0",
  fetch: fetchChirho,
  error: errorChirho,
});

console.log(`Hallelujah! The Bible Reader is running at http://localhost:${serverChirho.port}`);
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week09-session3-chirho.sh',
  93,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 10 Session 1 (payload-week10-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'nHMeH25HORq7Agjda3n9I',
  'Week 10 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 10, Session 1',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 10, Session 1
# This script creates the "Bible Jeopardy" web application with a separate client and server.

# --- Output initial messages ---
echo "Payload for Week 10 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-10-chirho/session-1-chirho"
TARGET_INSTRUCTIONS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_GAME_FILE_CHIRHO="$TARGET_DIR_CHIRHO/game-chirho.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/program-chirho.js"
TARGET_SQL_FILE_CHIRHO="$TARGET_DIR_CHIRHO/seed-chirho.sql"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Create the Instructional HTML file ---
if [[ ! -f "$TARGET_INSTRUCTIONS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_INSTRUCTIONS_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Bible Jeopardy Web App</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        a { color: #3b82f6; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Web App: Bible Jeopardy! ✝️</h1>
        <p>Hallelujah! Today we will build a full web application with a Bun backend. The server will run in the console and serve an interactive HTML game page to your browser. We will use **WebSockets** for real-time communication between players!</p>
        <p class="verse-chirho">"Give instruction to a wise man, and he will be yet wiser: teach a just man, and he will increase in learning." - Proverbs 9:9</p>
        <p>Let''s increase in learning together! Follow the steps below to run the game server.</p>
        <h2>How to Run the Game</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-10-chirho/session-1-chirho</code></pre>
        <h4>Step 2: Run the server with Bun</h4>
        <p>This will start the program. It will ask for player names in the console first!</p>
        <pre><code>bun run program-chirho.js</code></pre>
        <h4>Step 3: Play the Game!</h4>
        <p>Open your web browser and go to the address shown in the console. All players should open this address on their computers to join the same game.</p>
        <pre><a href="http://localhost:8000" target="_blank">http://localhost:8000</a></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_INSTRUCTIONS_FILE_CHIRHO"
fi

# --- 2. Create the SQL Seed file (Corrected) ---
if [[ ! -f "$TARGET_SQL_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_SQL_FILE_CHIRHO"
-- "For God so loved the world..." (John 3:16 KJV)
INSERT INTO categories_chirho (id_chirho, name_chirho) VALUES (1, ''Old Testament''), (2, ''New Testament''), (3, ''The Prophets''), (4, ''Names of God'');

-- Questions and Answers with explicit IDs to ensure correctness
INSERT INTO questions_chirho (id_chirho, category_id_chirho, points_chirho, question_text_chirho, question_group_key_chirho) VALUES
(1, 1, 100, ''Who was the first man created by God?'', ''1-100''),
(2, 1, 100, ''What was the name of Abraham''''s wife?'', ''1-100''),
(3, 1, 100, ''This structure built by Noah saved his family from the flood.'', ''1-100''),
(4, 1, 200, ''How many plagues did God send on Egypt?'', ''1-200''),
(5, 1, 200, ''What did Jacob give Joseph that made his brothers jealous?'', ''1-200''),
(6, 1, 200, ''Moses received the Ten Commandments on which mountain?'', ''1-200''),
(7, 1, 300, ''This man led the Israelites out of Egypt.'', ''1-300''),
(8, 1, 300, ''Who was the strongest man in the Bible?'', ''1-300''),
(9, 1, 300, ''I was the first king of Israel.'', ''1-300''),
(10, 2, 100, ''Where was Jesus born?'', ''2-100''),
(11, 2, 100, ''Who baptized Jesus?'', ''2-100''),
(12, 2, 100, ''What trade did Jesus learn from his earthly father Joseph?'', ''2-100''),
(13, 2, 200, ''Who betrayed Jesus for 30 pieces of silver?'', ''2-200''),
(14, 2, 200, ''What is the shortest verse in the Bible?'', ''2-200''),
(15, 2, 200, ''This apostle famously doubted Jesus'''' resurrection until he could see the wounds.'', ''2-200''),
(16, 2, 300, ''This apostle wrote the Book of Revelation.'', ''2-300''),
(17, 2, 300, ''What event marked the beginning of the Holy Spirit descending on the apostles?'', ''2-300''),
(18, 2, 300, ''I wrote the most books in the New Testament.'', ''2-300''),
(19, 3, 100, ''Who was thrown into a den of lions for praying to God?'', ''3-100''),
(20, 3, 100, ''This prophet confronted the prophets of Baal on Mount Carmel.'', ''3-100''),
(21, 3, 100, ''I was a prophet and a judge who anointed the first king of Israel.'', ''3-100''),
(22, 3, 200, ''This prophet was swallowed by a great fish.'', ''3-200''),
(23, 3, 200, ''Whose prophetic book is known as the "weeping prophet"?'', ''3-200''),
(24, 3, 200, ''I saw a vision of a valley of dry bones coming to life.'', ''3-200''),
(25, 3, 300, ''Which prophet is most known for prophesying about the suffering servant, Jesus?'', ''3-300''),
(26, 3, 300, ''I was taken up to heaven in a chariot of fire.'', ''3-300''),
(27, 3, 300, ''My prophetic book is the last one in the Old Testament.'', ''3-300''),
(28, 4, 100, ''What does "Emmanuel" mean?'', ''4-100''),
(29, 4, 100, ''In John 8:58, Jesus says "Before Abraham was, _ __."'', ''4-100''),
(30, 4, 100, ''The name "Messiah" means what?'', ''4-100''),
(31, 4, 200, ''This Hebrew name for God means "The Lord Will Provide."'', ''4-200''),
(32, 4, 200, ''This name for God means "The Lord is my Banner."'', ''4-200''),
(33, 4, 200, ''When God appeared to Moses in the burning bush, He revealed His name as what?'', ''4-200''),
(34, 4, 300, ''Jesus is called the "Alpha and the ___."'', ''4-300''),
(35, 4, 300, ''In Revelation, Jesus is called the "____ of the tribe of Judah."'', ''4-300''),
(36, 4, 300, ''This name for God means "God Almighty."'', ''4-300'');

INSERT INTO answers_chirho (question_id_chirho, answer_text_chirho, is_correct_chirho) VALUES
(1,''Adam'',1),(1,''Noah'',0),(1,''Abraham'',0),(1,''Moses'',0),
(2,''Sarah'',1),(2,''Rebecca'',0),(2,''Rachel'',0),(2,''Leah'',0),
(3,''The Ark'',1),(3,''The Temple'',0),(3,''A Ziggurat'',0),(3,''A Tabernacle'',0),
(4,''10'',1),(4,''7'',0),(4,''12'',0),(4,''3'',0),
(5,''A coat of many colors'',1),(5,''A golden ring'',0),(5,''A new flock'',0),(5,''His birthright'',0),
(6,''Mount Sinai'',1),(6,''Mount Zion'',0),(6,''Mount of Olives'',0),(6,''Mount Carmel'',0),
(7,''Moses'',1),(7,''Joshua'',0),(7,''David'',0),(7,''Aaron'',0),
(8,''Samson'',1),(8,''Goliath'',0),(8,''David'',0),(8,''Gideon'',0),
(9,''Saul'',1),(9,''David'',0),(9,''Solomon'',0),(9,''Samuel'',0),
(10,''Bethlehem'',1),(10,''Jerusalem'',0),(10,''Nazareth'',0),(10,''Galilee'',0),
(11,''John the Baptist'',1),(11,''Peter'',0),(11,''An angel'',0),(11,''His father, Joseph'',0),
(12,''A carpenter'',1),(12,''A fisherman'',0),(12,''A shepherd'',0),(12,''A tax collector'',0),
(13,''Judas Iscariot'',1),(13,''Peter'',0),(13,''Thomas'',0),(13,''John'',0),
(14,''Jesus wept.'',1),(14,''Pray without ceasing.'',0),(14,''God is love.'',0),(14,''I am the way.'',0),
(15,''Thomas'',1),(15,''Peter'',0),(15,''Andrew'',0),(15,''Philip'',0),
(16,''John'',1),(16,''Paul'',0),(16,''Peter'',0),(16,''Matthew'',0),
(17,''Pentecost'',1),(17,''The Passover'',0),(17,''The Transfiguration'',0),(17,''The Last Supper'',0),
(18,''Paul'',1),(18,''Peter'',0),(18,''John'',0),(18,''Luke'',0),
(19,''Daniel'',1),(19,''Elijah'',0),(19,''Jeremiah'',0),(19,''Jonah'',0),
(20,''Elijah'',1),(20,''Elisha'',0),(20,''Isaiah'',0),(20,''Moses'',0),
(21,''Samuel'',1),(21,''Nathan'',0),(21,''Gad'',0),(21,''Ahijah'',0),
(22,''Jonah'',1),(22,''Amos'',0),(22,''Hosea'',0),(22,''Isaiah'',0),
(23,''Jeremiah'',1),(23,''Isaiah'',0),(23,''Ezekiel'',0),(23,''Lamentations (Book)'',0),
(24,''Ezekiel'',1),(24,''Daniel'',0),(24,''Jeremiah'',0),(24,''Isaiah'',0),
(25,''Isaiah'',1),(25,''Ezekiel'',0),(25,''Daniel'',0),(25,''Zechariah'',0),
(26,''Elijah'',1),(26,''Elisha'',0),(26,''Enoch'',0),(26,''Moses'',0),
(27,''Malachi'',1),(27,''Zechariah'',0),(27,''Haggai'',0),(27,''Micah'',0),
(28,''God with us'',1),(28,''God is mighty'',0),(28,''God is my shepherd'',0),(28,''The Most High God'',0),
(29,''I am'',1),(29,''He is'',0),(29,''The Son'',0),(29,''The Word'',0),
(30,''Anointed One'',1),(30,''Savior'',0),(30,''King of Kings'',0),(30,''Rabbi'',0),
(31,''Jehovah Jireh'',1),(31,''Jehovah Nissi'',0),(31,''Jehovah Shalom'',0),(31,''El Shaddai'',0),
(32,''Jehovah Nissi'',1),(32,''Jehovah Rapha'',0),(32,''Jehovah Tsidkenu'',0),(32,''Adonai'',0),
(33,''I AM THAT I AM'',1),(33,''Elohim'',0),(33,''El Elyon'',0),(33,''Yahweh'',0),
(34,''Omega'',1),(34,''Beginning'',0),(34,''First'',0),(34,''Last'',0),
(35,''Lion'',1),(35,''Lamb'',0),(35,''King'',0),(35,''Root'',0),
(36,''El Shaddai'',1),(36,''El Roi'',0),(36,''El Olam'',0),(36,''Jehovah'',0);
EOF
    echo "✅ Created seed file: $TARGET_SQL_FILE_CHIRHO"
fi

# --- 3. Create the Game Client HTML file ---
if [[ ! -f "$TARGET_GAME_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_GAME_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bible Jeopardy</title>
    <style>
        body{font-family:system-ui,sans-serif;background:#06202A;color:white;display:flex;flex-direction:column;align-items:center;margin:0;}
        #board-chirho{display:grid;grid-template-columns:repeat(4,1fr);gap:10px;padding:20px;width:90%;max-width:1000px;}
        .category-header-chirho{background:#0A3A4A;text-align:center;padding:15px;font-weight:bold;border-radius:5px;font-size:1.2em;}
        .question-box-chirho{background:#136C7A;text-align:center;padding:25px 15px;font-size:1.5em;font-weight:bold;border-radius:5px;cursor:pointer;transition:transform 0.2s;}
        .question-box-chirho:hover{transform:scale(1.05);}
        .question-box-chirho.answered{background:#0A3A4A;color:#555;cursor:default;pointer-events:none;}
        #scores-chirho{display:flex;gap:20px;margin:20px;}
        .player-score-chirho{background:#136C7A;padding:10px 20px;border-radius:5px;transition: border-color 0.3s;}
        .player-score-chirho.active{border:2px solid #FFD700;}
        .modal-overlay-chirho{position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.8);display:none;justify-content:center;align-items:center;z-index:100;}
        .modal-content-chirho{background:#06202A;padding:40px;border:2px solid #136C7A;border-radius:10px;text-align:center;width:80%;max-width:700px;}
        #answers-container-chirho{display:grid;grid-template-columns:1fr 1fr;gap:15px;margin-top:20px;}
        .answer-btn-chirho{background:#136C7A;color:white;padding:15px;border:none;border-radius:5px;font-size:1em;cursor:pointer;}
    </style>
</head>
<body>
    <h1>Bible Jeopardy</h1>
    <div id="scores-chirho"></div>
    <div id="board-chirho"></div>
    <div id="modal-chirho" class="modal-overlay-chirho"><div id="modal-content-chirho" class="modal-content-chirho"><h2 id="question-text-chirho"></h2><div id="answers-container-chirho"></div></div></div>
    <div id="result-modal-chirho" class="modal-overlay-chirho"><div id="result-content-chirho" class="modal-content-chirho"></div></div>
    <div id="game-over-modal-chirho" class="modal-overlay-chirho"><div id="game-over-content-chirho" class="modal-content-chirho"></div></div>
    <script>
        const wsChirho = new WebSocket(''ws://'' + window.location.host + ''/ws-chirho'');

        wsChirho.onmessage = (eventChirho) => {
            const gameStateChirho = JSON.parse(eventChirho.data);
            updateUIChirho(gameStateChirho);
        };

        function updateUIChirho(stateChirho) {
            const scoresDivChirho = document.getElementById(''scores-chirho'');
            scoresDivChirho.innerHTML = '''';
            stateChirho.playersChirho.forEach((playerChirho, indexChirho) => {
                const scoreElChirho = document.createElement(''div'');
                scoreElChirho.className = ''player-score-chirho'';
                if (indexChirho === stateChirho.currentPlayerIndexChirho && !stateChirho.isGameOverChirho) scoreElChirho.classList.add(''active'');
                scoreElChirho.textContent = `${playerChirho.nameChirho}: ${playerChirho.scoreChirho}`;
                scoresDivChirho.appendChild(scoreElChirho);
            });

            const boardDivChirho = document.getElementById(''board-chirho'');
            boardDivChirho.innerHTML = '''';
            stateChirho.categoriesChirho.forEach(categoryChirho => {
                const headerChirho = document.createElement(''div'');
                headerChirho.className = ''category-header-chirho'';
                headerChirho.textContent = categoryChirho.name_chirho;
                boardDivChirho.appendChild(headerChirho);
            });
            const pointsValuesChirho = [100, 200, 300];
            pointsValuesChirho.forEach(pointsValueChirho => {
                stateChirho.categoriesChirho.forEach(categoryChirho => {
                    const groupKeyChirho = `${categoryChirho.id_chirho}-${pointsValueChirho}`;
                    const boxChirho = document.createElement(''div'');
                    boxChirho.className = ''question-box-chirho'';
                    if (!stateChirho.answeredGroupKeysChirho.includes(groupKeyChirho)) {
                        boxChirho.textContent = pointsValueChirho;
                        boxChirho.onclick = () => wsChirho.send(JSON.stringify({ actionChirho: ''CHOOSE_QUESTION'', categoryIdChirho: categoryChirho.id_chirho, pointsChirho: pointsValueChirho }));
                    } else {
                        boxChirho.classList.add(''answered'');
                    }
                    boardDivChirho.appendChild(boxChirho);
                });
            });

            const questionModalChirho = document.getElementById(''modal-chirho'');
            if (stateChirho.activeQuestionChirho) {
                document.getElementById(''question-text-chirho'').textContent = stateChirho.activeQuestionChirho.question_text_chirho;
                const answersContainerChirho = document.getElementById(''answers-container-chirho'');
                answersContainerChirho.innerHTML = '''';
                stateChirho.activeQuestionChirho.answersChirho.forEach(answerChirho => {
                    const buttonChirho = document.createElement(''button'');
                    buttonChirho.className = ''answer-btn-chirho'';
                    buttonChirho.textContent = answerChirho.answer_text_chirho;
                    buttonChirho.onclick = () => wsChirho.send(JSON.stringify({ actionChirho: ''SUBMIT_ANSWER'', answerIdChirho: answerChirho.id_chirho }));
                    answersContainerChirho.appendChild(buttonChirho);
                });
                questionModalChirho.style.display = ''flex'';
            } else {
                questionModalChirho.style.display = ''none'';
            }

            const resultModalChirho = document.getElementById(''result-modal-chirho'');
            const resultContentChirho = document.getElementById(''result-content-chirho'');
            if (stateChirho.lastAnswerResultChirho) {
                if(stateChirho.lastAnswerResultChirho.statusChirho === ''correct'') {
                    resultContentChirho.innerHTML = `<h1>Correct!</h1><p>+${stateChirho.lastAnswerResultChirho.pointsChirho} points</p><button onclick="wsChirho.send(JSON.stringify({actionChirho: ''NEXT_TURN''}))">Continue</button>`;
                } else {
                    resultContentChirho.innerHTML = `<h1>Incorrect</h1><button onclick="wsChirho.send(JSON.stringify({actionChirho: ''NEXT_TURN''}))">Continue</button>`;
                }
                resultModalChirho.style.display = ''flex'';
            } else {
                resultModalChirho.style.display = ''none'';
            }

            const gameOverModalChirho = document.getElementById(''game-over-modal-chirho'');
            if (stateChirho.isGameOverChirho) {
                const winnerChirho = stateChirho.playersChirho.reduce((prevChirho, currentChirho) => (prevChirho.scoreChirho > currentChirho.scoreChirho) ? prevChirho : currentChirho);
                let leaderboardHtmlChirho = ''<h2>Leaderboard</h2><ol>'';
                stateChirho.leaderboardChirho.forEach(scoreChirho => { leaderboardHtmlChirho += `<li>${scoreChirho.name_chirho}: ${scoreChirho.score_chirho}</li>`; });
                leaderboardHtmlChirho += ''</ol>'';
                document.getElementById(''game-over-content-chirho'').innerHTML = `<h1>Game Over!</h1><h2>${winnerChirho.nameChirho} is the winner!</h2>${leaderboardHtmlChirho}`;
                gameOverModalChirho.style.display = ''flex'';
            }
        }
    </script>
</body>
</html>
EOF
    echo "✅ Created game client file: $TARGET_GAME_FILE_CHIRHO"
fi

# --- 4. Create the JS server program ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";
import { file } from "bun";

const jeopardyDbChirho = new Database("jeopardy-chirho.sqlite");
const leaderboardDbChirho = new Database("leaderboard-chirho.sqlite");
let gameStateChirho = {};

async function setupGameChirho() {
    jeopardyDbChirho.run(`CREATE TABLE IF NOT EXISTS categories_chirho (id_chirho INTEGER PRIMARY KEY, name_chirho TEXT NOT NULL UNIQUE);`);
    jeopardyDbChirho.run(`CREATE TABLE IF NOT EXISTS questions_chirho (id_chirho INTEGER PRIMARY KEY, category_id_chirho INTEGER, points_chirho INTEGER, question_text_chirho TEXT, question_group_key_chirho TEXT);`);
    jeopardyDbChirho.run(`CREATE TABLE IF NOT EXISTS answers_chirho (id_chirho INTEGER PRIMARY KEY, question_id_chirho INTEGER, answer_text_chirho TEXT, is_correct_chirho INTEGER);`);
    leaderboardDbChirho.run(`CREATE TABLE IF NOT EXISTS scores_chirho (id_chirho INTEGER PRIMARY KEY, name_chirho TEXT, score_chirho INTEGER, date_chirho DATETIME);`);

    const questionCountChirho = jeopardyDbChirho.query("SELECT COUNT(*) as count FROM questions_chirho;").get().count;
    if (questionCountChirho === 0) {
        console.log("Database is empty. Seeding...");
        const seedSqlChirho = await file(''seed-chirho.sql'').text();
        jeopardyDbChirho.exec(seedSqlChirho);
        console.log("Database seeded successfully. Hallelujah!");
    }

    const namesStringChirho = prompt("Enter player names, separated by commas: ") || "Player 1";
    const playersChirho = namesStringChirho.split('','').map(nameChirho => ({ nameChirho: nameChirho.trim(), scoreChirho: 0 }));

    const categoriesChirho = jeopardyDbChirho.query("SELECT * FROM categories_chirho;").all();
    const allQuestionsChirho = jeopardyDbChirho.query("SELECT DISTINCT category_id_chirho, points_chirho FROM questions_chirho;").all();

    gameStateChirho = {
        playersChirho: playersChirho,
        currentPlayerIndexChirho: 0,
        categoriesChirho: categoriesChirho,
        questionsChirho: allQuestionsChirho,
        answeredGroupKeysChirho: new Set(),
        activeQuestionChirho: null,
        lastAnswerResultChirho: null,
        isGameOverChirho: false,
    };
}

function broadcastGameStateChirho(serverChirho) {
    const stateToSendChirho = { ...gameStateChirho, answeredGroupKeysChirho: Array.from(gameStateChirho.answeredGroupKeysChirho) };
    serverChirho.publish("jeopardy-channel", JSON.stringify(stateToSendChirho));
}

function handleWebSocketMessageChirho(wsChirho, serverChirho, messageChirho) {
    const dataChirho = JSON.parse(messageChirho);

    if (dataChirho.actionChirho === ''CHOOSE_QUESTION'') {
        const { categoryIdChirho, pointsChirho } = dataChirho;
        const groupKeyChirho = `${categoryIdChirho}-${pointsChirho}`;
        if (!gameStateChirho.answeredGroupKeysChirho.has(groupKeyChirho)) {
            const possibleQuestionsChirho = jeopardyDbChirho.query(`SELECT * FROM questions_chirho WHERE category_id_chirho = ? AND points_chirho = ?`).all(categoryIdChirho, pointsChirho);
            const randomQuestionChirho = possibleQuestionsChirho[Math.floor(Math.random() * possibleQuestionsChirho.length)];
            const answersDataChirho = jeopardyDbChirho.query(`SELECT id_chirho, answer_text_chirho FROM answers_chirho WHERE question_id_chirho = ?`).all(randomQuestionChirho.id_chirho);
            gameStateChirho.activeQuestionChirho = { ...randomQuestionChirho, answersChirho: answersDataChirho };
        }
    }

    if (dataChirho.actionChirho === ''SUBMIT_ANSWER'') {
        const questionChirho = gameStateChirho.activeQuestionChirho;
        const answerChirho = jeopardyDbChirho.query(`SELECT is_correct_chirho FROM answers_chirho WHERE id_chirho = ?`).get(dataChirho.answerIdChirho);

        if (answerChirho && answerChirho.is_correct_chirho === 1) {
            gameStateChirho.playersChirho[gameStateChirho.currentPlayerIndexChirho].scoreChirho += questionChirho.points_chirho;
            gameStateChirho.lastAnswerResultChirho = { statusChirho: ''correct'', pointsChirho: questionChirho.points_chirho };
        } else {
             gameStateChirho.lastAnswerResultChirho = { statusChirho: ''incorrect'' };
        }

        gameStateChirho.answeredGroupKeysChirho.add(`${questionChirho.category_id_chirho}-${questionChirho.points_chirho}`);
    }

    if (dataChirho.actionChirho === ''NEXT_TURN'') {
        gameStateChirho.activeQuestionChirho = null;
        gameStateChirho.lastAnswerResultChirho = null;
        gameStateChirho.currentPlayerIndexChirho = (gameStateChirho.currentPlayerIndexChirho + 1) % gameStateChirho.playersChirho.length;
        if (gameStateChirho.answeredGroupKeysChirho.size === gameStateChirho.questionsChirho.length) {
            endGameChirho();
        }
    }

    broadcastGameStateChirho(serverChirho);
}

function endGameChirho() {
    gameStateChirho.isGameOverChirho = true;
    gameStateChirho.playersChirho.forEach(playerChirho => {
        leaderboardDbChirho.query(`INSERT INTO scores_chirho (name_chirho, score_chirho, date_chirho) VALUES (?, ?, ?)`).run(playerChirho.nameChirho, playerChirho.scoreChirho, new Date().toISOString());
    });
    const topScoresChirho = leaderboardDbChirho.query(`SELECT name_chirho, score_chirho FROM scores_chirho ORDER BY score_chirho DESC, date_chirho DESC LIMIT 10;`).all();
    gameStateChirho.leaderboardChirho = topScoresChirho;
}

async function mainChirho() {
    await setupGameChirho();
    const serverChirho = Bun.serve({
        port: 8000,
        fetch(requestChirho, serverChirho) {
            const urlChirho = new URL(requestChirho.url);
            if (urlChirho.pathname === "/") return new Response(Bun.file("game-chirho.html"));
            if (urlChirho.pathname === "/ws-chirho" && serverChirho.upgrade(requestChirho)) return;
            return new Response("Not Found", { status: 404 });
        },
        websocket: {
            open(wsChirho) { wsChirho.subscribe("jeopardy-channel"); broadcastGameStateChirho(serverChirho); },
            message(wsChirho, messageChirho) { handleWebSocketMessageChirho(wsChirho, serverChirho, messageChirho); },
            close(wsChirho) { wsChirho.unsubscribe("jeopardy-channel"); },
        },
    });
    console.log(`Hallelujah! Bible Jeopardy server is running at http://localhost:${serverChirho.port}`);
}

mainChirho();
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week10-session1-chirho.sh',
  101,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 10 Session 2 (payload-week10-session2b-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'bAlynUgzvzxZ7jOrB95oY',
  'Week 10 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 10, Session 2',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 10, Session 2
# This script creates the "Parable Linker" console database application.

# --- Output initial messages ---
echo "Payload for Week 10 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-10-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/program-chirho.js"
TARGET_SQL_FILE_CHIRHO="$TARGET_DIR_CHIRHO/seed-chirho.sql"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Create the HTML file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - The Parable Linker</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Database Study Tool: The Parable Linker 🕊️</h1>
        <p>Hallelujah! Today we will build a practical study tool to help us understand the parables of Jesus. This console application uses a **many-to-many** database relationship to link parables to the spiritual themes they teach.</p>
        <p class="verse-chirho">"Yea, if thou criest after knowledge, and liftest up thy voice for understanding... Then shalt thou understand the fear of the Lord, and find the knowledge of God." - Proverbs 2:3-5</p>
        <p>This program is a tool to help us "cry after knowledge" and find the connections in His Word. Follow the steps below to run the program.</p>
        <h2>How to Run the Program</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-10-chirho/session-2-chirho</code></pre>
        <h4>Step 2: Run the program with Bun</h4>
        <pre><code>bun run program-chirho.js</code></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the SQL Seed file ---
if [[ ! -f "$TARGET_SQL_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_SQL_FILE_CHIRHO"
-- "For God so loved the world..." (John 3:16 KJV)
-- Initial data for our Parable Linker database.

INSERT INTO parables_chirho (name_chirho) VALUES
(''The Sower''),
(''The Prodigal Son''),
(''The Good Samaritan''),
(''The Lost Sheep'');

INSERT INTO themes_chirho (name_chirho) VALUES
(''Lost & Found''),
(''Forgiveness''),
(''Stewardship''),
(''Love & Mercy''),
(''Hearing the Word'');
EOF
    echo "✅ Created seed file: $TARGET_SQL_FILE_CHIRHO"
fi

# --- 3. Create the JS console program ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";
import { file } from "bun";

const dbChirho = new Database("parables-chirho.sqlite");

// --- Database Schema & Seeding ---
async function setupDatabaseChirho() {
    dbChirho.run(`CREATE TABLE IF NOT EXISTS parables_chirho (id_chirho INTEGER PRIMARY KEY, name_chirho TEXT NOT NULL UNIQUE);`);
    dbChirho.run(`CREATE TABLE IF NOT EXISTS themes_chirho (id_chirho INTEGER PRIMARY KEY, name_chirho TEXT NOT NULL UNIQUE);`);
    dbChirho.run(`
      CREATE TABLE IF NOT EXISTS parable_theme_chirho (
        parable_id_chirho INTEGER, theme_id_chirho INTEGER,
        FOREIGN KEY (parable_id_chirho) REFERENCES parables_chirho(id_chirho),
        FOREIGN KEY (theme_id_chirho) REFERENCES themes_chirho(id_chirho),
        PRIMARY KEY (parable_id_chirho, theme_id_chirho)
      );
    `);

    const parableCountChirho = dbChirho.query("SELECT COUNT(*) as count FROM parables_chirho;").get().count;
    if (parableCountChirho === 0) {
        console.log("Database is empty. Seeding...");
        const seedSqlChirho = await file(''seed-chirho.sql'').text();
        dbChirho.exec(seedSqlChirho);
        console.log("Database seeded successfully. Hallelujah!");
    }
}

// --- Application Functions ---
function displayMenuChirho() {
    console.log("\n--- The Parable Linker Menu ---");
    console.log("1. Add a New Parable");
    console.log("2. Add a New Theme");
    console.log("3. Link a Parable to a Theme");
    console.log("4. Study: View Parables by Theme");
    console.log("5. Study: View Themes in a Parable");
    console.log("6. Exit");
}

function addParableChirho() {
    const nameChirho = prompt("Enter the name of the new parable: ");
    if (nameChirho) {
        try {
            dbChirho.query("INSERT INTO parables_chirho (name_chirho) VALUES (?);").run(nameChirho);
            console.log(`Added "${nameChirho}" to the database.`);
        } catch (errorChirho) { console.log(`"${nameChirho}" is already in the database.`); }
    }
}

function addThemeChirho() {
    const nameChirho = prompt("Enter the name of the new theme: ");
    if (nameChirho) {
        try {
            dbChirho.query("INSERT INTO themes_chirho (name_chirho) VALUES (?);").run(nameChirho);
            console.log(`Added the theme "${nameChirho}".`);
        } catch (errorChirho) { console.log(`The theme "${nameChirho}" already exists.`); }
    }
}

function linkParableToThemeChirho() {
    const parablesChirho = dbChirho.query("SELECT * FROM parables_chirho;").all();
    console.log("\nParables:");
    parablesChirho.forEach(p_chirho => console.log(`[${p_chirho.id_chirho}] ${p_chirho.name_chirho}`));
    const parableIdChirho = prompt("Choose a parable ID: ");

    const themesChirho = dbChirho.query("SELECT * FROM themes_chirho;").all();
    console.log("\nThemes:");
    themesChirho.forEach(t_chirho => console.log(`[${t_chirho.id_chirho}] ${t_chirho.name_chirho}`));
    const themeIdChirho = prompt("Choose a theme ID to link it to: ");

    try {
        dbChirho.query("INSERT INTO parable_theme_chirho (parable_id_chirho, theme_id_chirho) VALUES (?, ?);").run(parableIdChirho, themeIdChirho);
        console.log("Successfully linked parable to theme!");
    } catch (e) { console.log("That link already exists or an ID was invalid."); }
}

function viewParablesByThemeChirho() {
    const themesChirho = dbChirho.query("SELECT * FROM themes_chirho;").all();
    console.log("\nThemes:");
    themesChirho.forEach(t_chirho => console.log(`[${t_chirho.id_chirho}] ${t_chirho.name_chirho}`));
    const themeIdChirho = prompt("Choose a theme ID to see its parables: ");

    const parablesChirho = dbChirho.query(`
        SELECT p.name_chirho FROM parables_chirho p
        JOIN parable_theme_chirho pt ON p.id_chirho = pt.parable_id_chirho
        WHERE pt.theme_id_chirho = ?;
    `).all(themeIdChirho);

    const themeNameChirho = themesChirho.find(t_chirho => t_chirho.id_chirho == themeIdChirho)?.name_chirho || ''Unknown Theme'';

    console.log(`\n--- Parables about ''${themeNameChirho}'' ---`);
    if (parablesChirho.length > 0) {
        parablesChirho.forEach(p_chirho => console.log(`- ${p_chirho.name_chirho}`));
    } else {
        console.log("(No parables linked to this theme yet)");
    }
}

function viewThemesInParableChirho() {
    const parablesChirho = dbChirho.query("SELECT * FROM parables_chirho;").all();
    console.log("\nParables:");
    parablesChirho.forEach(p_chirho => console.log(`[${p_chirho.id_chirho}] ${p_chirho.name_chirho}`));
    const parableIdChirho = prompt("Choose a parable ID to see its themes: ");

    const themesChirho = dbChirho.query(`
        SELECT t.name_chirho FROM themes_chirho t
        JOIN parable_theme_chirho pt ON t.id_chirho = pt.theme_id_chirho
        WHERE pt.parable_id_chirho = ?;
    `).all(parableIdChirho);

    const parableNameChirho = parablesChirho.find(p_chirho => p_chirho.id_chirho == parableIdChirho)?.name_chirho || ''Unknown Parable'';

    console.log(`\n--- Themes in ''${parableNameChirho}'' ---`);
    if (themesChirho.length > 0) {
        themesChirho.forEach(t_chirho => console.log(`- ${t_chirho.name_chirho}`));
    } else {
        console.log("(No themes linked to this parable yet)");
    }
}

async function mainChirho() {
    await setupDatabaseChirho();
    console.log("Hallelujah! Welcome to the Parable Linker.");
    let isRunningChirho = true;
    while (isRunningChirho) {
        displayMenuChirho();
        const choiceChirho = prompt("> Choose an option (1-6): ");
        switch (choiceChirho) {
            case ''1'': addParableChirho(); break;
            case ''2'': addThemeChirho(); break;
            case ''3'': linkParableToThemeChirho(); break;
            case ''4'': viewParablesByThemeChirho(); break;
            case ''5'': viewThemesInParableChirho(); break;
            case ''6'': isRunningChirho = false; break;
            default: console.log("Invalid option.");
        }
    }
    console.log("\nIncrease in learning! God bless!");
    dbChirho.close();
}

mainChirho();
EOF
    echo "✅ Created console program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week10-session2b-chirho.sh',
  102,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 10 Session 2 (payload-week10-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'zeZgO_3b6u4OU6SGUnQmk',
  'Week 10 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 10, Session 2',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 10, Session 2
# This script creates a server-side Bible Commenting application.

# --- Output initial messages ---
echo "Payload for Week 10 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-10-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/server-chirho.js"
TARGET_DB_FILE_CHIRHO="$TARGET_DIR_CHIRHO/bible-chapters-chirho.sqlite"
DB_URL_CHIRHO="https://media-cp2025fe.sonshinewarriors.org/misc-chirho/bible-chapters-chirho.sqlite"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Download the database file if it doesn''t exist ---
if [[ ! -f "$TARGET_DB_FILE_CHIRHO" ]]; then
    echo "Downloading Bible database... (this may take a moment)"
    curl -L -o "$TARGET_DB_FILE_CHIRHO" "$DB_URL_CHIRHO"
    if [[ $? -eq 0 ]]; then
        echo "✅ Database downloaded successfully. Hallelujah!"
    else
        echo "❌ Error: Could not download the database. Please check your internet connection."
        exit 1
    fi
fi

# --- 2. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Bible Commenting App</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e2b3b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        a { color: #3b82f6; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Server App: Personal Bible Commentary ✍️</h1>
        <p>Hallelujah! Today we will build a powerful study tool: a personal Bible commenting app. This web application will read from our Bible database and allow you to add your own notes to any chapter, which will be saved in a new `comments` table.</p>
        <p class="verse-chirho">"Blessed is the man... his delight is in the law of the LORD; and in his law doth he meditate day and night." - Psalm 1:1-2</p>
        <p>This program is a tool to help us meditate on His law. Follow the steps below to run it!</p>

        <h2>How to Run the Server</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-10-chirho/session-2-chirho</code></pre>

        <h4>Step 2: Start the server with Bun</h4>
        <p>This command will start the server. The first time it runs, it will add a new `comments_chirho` table to the database.</p>
        <pre><code>bun run server-chirho.js</code></pre>

        <h4>Step 3: Begin Your Study!</h4>
        <p>Open your web browser and go to this address to see the index of all books and chapters.</p>
        <pre><a href="http://localhost:8000" target="_blank">http://localhost:8000</a></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 3. Create the Bun server program ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";

// --- Database Setup ---
const dbChirho = new Database("bible-chapters-chirho.sqlite");
dbChirho.run(`
  CREATE TABLE IF NOT EXISTS comments_chirho (
    id_chirho INTEGER PRIMARY KEY AUTOINCREMENT,
    chapter_id_chirho INTEGER,
    comment_text_chirho TEXT NOT NULL,
    timestamp_chirho DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (chapter_id_chirho) REFERENCES chapters_chirho(id_chirho)
  );
`);

// --- HTML Generation Functions ---

function generateIndexPageChirho() {
    console.log("ACTION: Generating index page...");
    const commentedChaptersResult = dbChirho.query("SELECT DISTINCT chapter_id_chirho FROM comments_chirho;").all();
    const commentedChapterIds = new Set(commentedChaptersResult.map(row => row.chapter_id_chirho));

    const allChaptersChirho = dbChirho.query("SELECT id_chirho, book_name_chirho, chapter_chirho FROM chapters_chirho ORDER BY id_chirho;").all();

    const booksChirho = {};
    allChaptersChirho.forEach(chapterChirho => {
        if (!booksChirho[chapterChirho.book_name_chirho]) { booksChirho[chapterChirho.book_name_chirho] = []; }
        booksChirho[chapterChirho.book_name_chirho].push(chapterChirho);
    });

    let bookSectionsHtmlChirho = '''';
    for (const bookNameChirho in booksChirho) {
        let chapterLinksHtmlChirho = booksChirho[bookNameChirho].map(chapterChirho => {
            const hasComment = commentedChapterIds.has(chapterChirho.id_chirho);
            // UPDATED: Use HTML entity for the star to prevent encoding issues.
            return `<a class="chapter-link-chirho" href="/chapter/${chapterChirho.id_chirho}">${chapterChirho.chapter_chirho} ${hasComment ? ''&#11088;'' : ''''}</a>`;
        }).join('''');
        bookSectionsHtmlChirho += `<div class="book-group-chirho"><h2>${bookNameChirho}</h2><div class="chapters-container-chirho">${chapterLinksHtmlChirho}</div></div>`;
    }

    return `<!DOCTYPE html><html lang="en"><head><title>The Living Word - Index</title><style>body{font-family:system-ui,sans-serif;background:#f0f4f8;color:#333;}.container-chirho{max-width:900px;margin:20px auto;background:white;padding:20px 40px;border-radius:10px;}h1{color:#1e3a8a; text-align:center;}.book-group-chirho{margin-bottom:2.5em; border-bottom: 2px solid #e0e7ff; padding-bottom:1.5em;}.chapters-container-chirho{display:flex; flex-wrap:wrap; gap:8px;}.chapter-link-chirho{display:inline-block;width:3.5em;text-align:center;padding:8px 0;border:1px solid #d1d5db;border-radius:4px;text-decoration:none;color:#3b82f6;background-color:#f9fafb;transition:background-color 0.2s;}.chapter-link-chirho:hover{background-color:#e0e7ff;}</style></head><body><div class="container-chirho"><h1>The Living Word</h1><div>${bookSectionsHtmlChirho}</div></div></body></html>`;
}

function generateChapterPageChirho(chapterIdChirho) {
    console.log(`ACTION: Fetching chapter and comments for ID: ${chapterIdChirho}`);
    const chapterDataChirho = dbChirho.query("SELECT * FROM chapters_chirho WHERE id_chirho = ?;").get(chapterIdChirho);

    if (!chapterDataChirho) { return new Response("Chapter not found.", { status: 404 }); }

    const commentsChirho = dbChirho.query("SELECT * FROM comments_chirho WHERE chapter_id_chirho = ? ORDER BY timestamp_chirho DESC;").all(chapterIdChirho);
    let commentsHtmlChirho = ''<h3>Your Meditations</h3>'';
    if (commentsChirho.length > 0) {
        commentsHtmlChirho += commentsChirho.map(comment => `<div class="comment-chirho"><p>${comment.comment_text_chirho}</p><small>${new Date(comment.timestamp_chirho).toLocaleString()}</small></div>`).join('''');
    } else {
        commentsHtmlChirho += ''<p>No meditations recorded for this chapter yet.</p>'';
    }

    return `
      <!DOCTYPE html><html lang="en"><head><title>${chapterDataChirho.book_name_chirho} ${chapterDataChirho.chapter_chirho}</title>
      <style>
        @import url(''https://fonts.googleapis.com/css2?family=Lora:ital@0,400&display=swap'');
        body{font-family:''Lora'',serif;background:#fdfaf6;color:#333;line-height:1.8;}.container-chirho{max-width:800px;margin:20px auto;background:white;padding:40px;border-radius:5px;}
        h1{text-align:center;} a{color:#3b82f6;} p{margin-bottom:1.2em;} sup{color:#777;font-weight:bold;}
        .commentary-section-chirho{margin-top:40px;padding-top:20px;border-top:2px solid #eee;}
        .comment-chirho{background:#f9fafb;border-left:4px solid #dbeafe;padding:15px;margin-bottom:15px;border-radius:4px;}
        textarea{width:100%;height:100px;font-family:inherit;font-size:1em;padding:10px;border-radius:5px;border:1px solid #ccc;}
        button{font-family:system-ui;font-size:1em;padding:10px 15px;border-radius:5px;border:none;background:#1e3a8a;color:white;cursor:pointer;}
      </style></head><body><div class="container-chirho">
      <h1>${chapterDataChirho.book_name_chirho} ${chapterDataChirho.chapter_chirho}</h1>
      <div>${chapterDataChirho.content_chirho}</div><hr><p><a href="/">&larr; Back to Index</a></p>
      <div class="commentary-section-chirho">${commentsHtmlChirho}
      <form method="POST">
        <h3>Add Your Meditation</h3>
        <textarea name="commentTextChirho" required></textarea><br><br>
        <button type="submit">Save Meditation</button>
      </form></div>
      </div></body></html>
    `;
}

// --- Main Server Fetch Router ---
async function fetchChirho(requestChirho) {
    const urlChirho = new URL(requestChirho.url);

    if (urlChirho.pathname === "/") {
        return new Response(generateIndexPageChirho(), { headers: { "Content-Type": "text/html" } });
    }

    const chapterMatchChirho = urlChirho.pathname.match(/^\/chapter\/(\d+)/);
    if (chapterMatchChirho) {
        const chapterIdChirho = chapterMatchChirho[1];

        if (requestChirho.method === "POST") {
            const formDataChirho = await requestChirho.formData();
            const commentTextChirho = formDataChirho.get("commentTextChirho");
            if (commentTextChirho) {
                console.log(`ACTION: Adding comment to chapter ID ${chapterIdChirho}`);
                dbChirho.query("INSERT INTO comments_chirho (chapter_id_chirho, comment_text_chirho) VALUES (?, ?);").run(chapterIdChirho, commentTextChirho.toString());
            }
            return new Response(null, { status: 302, headers: { "Location": urlChirho.pathname } });
        }

        const chapterHtmlChirho = generateChapterPageChirho(chapterIdChirho);
        return new Response(chapterHtmlChirho, { headers: { "Content-Type": "text/html" } });
    }

    console.log(`ACTION: 404 Not Found for path: ${urlChirho.pathname}`);
    return new Response("Page not found.", { status: 404 });
}

function errorChirho(errorParameterChirho) {
    console.error(errorParameterChirho);
    return new Response("An error occurred on the server.", { status: 500 });
}

const serverChirho = Bun.serve({
  port: 8000,
  hostname: "0.0.0.0",
  fetch: fetchChirho,
  error: errorChirho,
});

console.log(`Hallelujah! The Bible Commentary App is running at http://localhost:${serverChirho.port}`);
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week10-session2-chirho.sh',
  102,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 10 Session 3 (payload-week10-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'MRL32do1qJkLoN67DXkE4',
  'Week 10 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 10, Session 3',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 10, Session 3
# This script creates the "Promise Box" API server application with a separate client file.

# --- Output initial messages ---
echo "Payload for Week 10 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-10-chirho/session-3-chirho"
TARGET_HTML_INSTRUCTIONS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_HTML_APP_FILE_CHIRHO="$TARGET_DIR_CHIRHO/promise-box-chirho.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/server-chirho.js"
TARGET_SQL_FILE_CHIRHO="$TARGET_DIR_CHIRHO/seed-chirho.sql"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_INSTRUCTIONS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_INSTRUCTIONS_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - The Promise Box</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        a { color: #3b82f6; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Server App: The Promise Box 🎁</h1>
        <p>Hallelujah! Today our server will serve a static HTML file as its front-end. That page will then ask our server''s **API endpoint** for a random promise from the database.</p>
        <p class="verse-chirho">"For all the promises of God in him are yea, and in him Amen, unto the glory of God by us." - 2 Corinthians 1:20</p>
        <p>Every time you click the button on the webpage, you are receiving one of God''s promises. Follow the steps below to run the server!</p>
        <h2>How to Run the Server</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-10-chirho/session-3-chirho</code></pre>
        <h4>Step 2: Run the server with Bun</h4>
        <pre><code>bun run server-chirho.js</code></pre>
        <h4>Step 3: Open the Promise Box!</h4>
        <p>Open your web browser and go to this address:</p>
        <pre><a href="http://localhost:8000" target="_blank">http://localhost:8000</a></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_INSTRUCTIONS_FILE_CHIRHO"
fi

# --- 2. Create the SQL Seed file ---
if [[ ! -f "$TARGET_SQL_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_SQL_FILE_CHIRHO"
-- "For God so loved the world..." (John 3:16 KJV)
INSERT INTO promises_chirho (citation_chirho, text_chirho) VALUES
(''Joshua 1:9'', ''Have not I commanded thee? Be strong and of a good courage; be not afraid, neither be thou dismayed: for the LORD thy God is with thee whithersoever thou goest.''),
(''Isaiah 41:10'', ''Fear thou not; for I am with thee: be not dismayed; for I am thy God: I will strengthen thee; yea, I will help thee; yea, I will uphold thee with the right hand of my righteousness.''),
(''Psalm 46:1'', ''God is our refuge and strength, a very present help in trouble.''),
(''Philippians 4:13'', ''I can do all things through Christ which strengtheneth me.''),
(''Matthew 6:33'', ''But seek ye first the kingdom of God, and his righteousness; and all these things shall be added unto you.''),
(''1 Peter 5:7'', ''Casting all your care upon him; for he careth for you.''),
(''Proverbs 3:5'', ''Trust in the LORD with all thine heart; and lean not unto thine own understanding.''),
(''Romans 8:28'', ''And we know that all things work together for good to them that love God, to them who are the called according to his purpose.''),
(''Jeremiah 29:11'', ''For I know the thoughts that I think toward you, saith the LORD, thoughts of peace, and not of evil, to give you an expected end.''),
(''John 14:27'', ''Peace I leave with you, my peace I give unto you: not as the world giveth, give I unto you. Let not your heart be troubled, neither let it be afraid.'');
EOF
    echo "✅ Created seed file: $TARGET_SQL_FILE_CHIRHO"
fi

# --- 3. Create the HTML App file (the client) ---
if [[ ! -f "$TARGET_HTML_APP_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_APP_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <title>The Promise Box</title>
    <style>
        body { font-family: system-ui, sans-serif; background: #1a202c; color: #edf2f7; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .container-chirho { text-align: center; max-width: 600px; padding: 40px; background: #2d3748; border-radius: 15px; box-shadow: 0 10px 25px rgba(0,0,0,0.5); }
        #promise-box-chirho { min-height: 150px; background: #1a202c; padding: 20px; border-radius: 10px; margin: 20px 0; }
        #verse-text-chirho { font-size: 1.2em; font-style: italic; }
        #verse-citation-chirho { font-weight: bold; margin-top: 10px; color: #f6e05e; }
        button { font-size: 1.2em; padding: 15px 30px; border-radius: 8px; border: none; background: #f6e05e; color: #1a202c; font-weight: bold; cursor: pointer; }
    </style>
</head>
<body>
    <div class="container-chirho">
        <h1>The Promise Box 🎁</h1>
        <div id="promise-box-chirho">
            <p id="verse-text-chirho">Click the button to receive one of God''s promises.</p>
            <p id="verse-citation-chirho"></p>
        </div>
        <button onclick="getPromiseChirho()">Receive a Promise</button>
    </div>
    <script>
        async function getPromiseChirho() {
            const textElementChirho = document.getElementById(''verse-text-chirho'');
            const citationElementChirho = document.getElementById(''verse-citation-chirho'');
            textElementChirho.textContent = ''Receiving...'';
            citationElementChirho.textContent = '''';

            const responseChirho = await fetch(''/api/promise-chirho'');
            const dataChirho = await responseChirho.json();

            textElementChirho.textContent = dataChirho.text_chirho;
            citationElementChirho.textContent = "- " + dataChirho.citation_chirho;
        }
    </script>
</body>
</html>
EOF
    echo "✅ Created app file: $TARGET_HTML_APP_FILE_CHIRHO"
fi


# --- 4. Create the JS server program ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";
import { file } from "bun";

const dbChirho = new Database("promises-chirho.sqlite");

async function setupDatabaseChirho() {
    dbChirho.run(`CREATE TABLE IF NOT EXISTS promises_chirho (id_chirho INTEGER PRIMARY KEY, citation_chirho TEXT, text_chirho TEXT);`);
    const promiseCountChirho = dbChirho.query("SELECT COUNT(*) as count FROM promises_chirho;").get().count;
    if (promiseCountChirho === 0) {
        console.log("Database is empty. Seeding from seed-chirho.sql...");
        try {
            const seedSqlChirho = await file(''seed-chirho.sql'').text();
            dbChirho.exec(seedSqlChirho);
            console.log("Database seeded successfully. Hallelujah!");
        } catch (errorChirho) { console.error("Error executing seed file:", errorChirho); }
    }
}

function handleApiRequestChirho() {
    console.log("ACTION: Serving a random promise from the API.");
    const randomPromiseChirho = dbChirho.query("SELECT * FROM promises_chirho ORDER BY RANDOM() LIMIT 1;").get();
    return new Response(JSON.stringify(randomPromiseChirho), {
        headers: { "Content-Type": "application/json" }
    });
}

async function fetchChirho(requestChirho) {
    const urlChirho = new URL(requestChirho.url);

    if (urlChirho.pathname === "/") {
        console.log("ACTION: Serving main HTML page (promise-box-chirho.html).");
        return new Response(file("promise-box-chirho.html"));
    }

    if (urlChirho.pathname === "/api/promise-chirho") {
        return handleApiRequestChirho();
    }

    return new Response("Not Found", { status: 404 });
}

async function mainChirho() {
    await setupDatabaseChirho();
    const serverChirho = Bun.serve({
        port: 8000,
        hostname: "0.0.0.0",
        fetch: fetchChirho,
    });
    console.log(`Hallelujah! The Promise Box server is running at http://localhost:${serverChirho.port}`);
}

mainChirho();
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week10-session3-chirho.sh',
  103,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 11 Session 1 (payload-week11-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'TEWONaP6EfCznAy2Rf51g',
  'Week 11 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 11, Session 1',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 11, Session 1
# This script creates the "Proverbs Wisdom Jar" client-server web application.

# --- Output initial messages ---
echo "Payload for Week 11 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
TARGET_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-11-chirho/session-1-chirho"
TARGET_HTML_INSTRUCTIONS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/index.html"
TARGET_HTML_APP_FILE_CHIRHO="$TARGET_DIR_CHIRHO/app-chirho.html"
TARGET_JS_FILE_CHIRHO="$TARGET_DIR_CHIRHO/server-chirho.js"
TARGET_SQL_FILE_CHIRHO="$TARGET_DIR_CHIRHO/seed-chirho.sql"

# --- Main logic ---
mkdir -p "$TARGET_DIR_CHIRHO"

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_INSTRUCTIONS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_INSTRUCTIONS_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - The Wisdom Jar Web App</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        a { color: #3b82f6; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Web App: The Proverbs Wisdom Jar 🏺</h1>
        <p>Hallelujah! We''ve gone from console applications into full client-server web applications. The Bun server will serve a beautiful HTML page, which will then talk to our server''s API to get Proverbs and save our reflections.</p>
        <p class="verse-chirho">"Wisdom is the principal thing; therefore get wisdom: and with all thy getting get understanding." - Proverbs 4:7</p>
        <p>This program is a tool to help us "get understanding" by meditating on God''s wisdom. Follow the steps below to run the server.</p>
        <h2>How to Run the Program</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-11-chirho/session-1-chirho</code></pre>
        <h4>Step 2: Run the server with Bun</h4>
        <pre><code>bun run server-chirho.js</code></pre>
        <h4>Step 3: Open the Wisdom Jar!</h4>
        <p>Open your web browser and go to this address:</p>
        <pre><a href="http://localhost:8000" target="_blank">http://localhost:8000</a></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_INSTRUCTIONS_FILE_CHIRHO"
fi

# --- 2. Create the SQL Seed file ---
if [[ ! -f "$TARGET_SQL_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_SQL_FILE_CHIRHO"
-- "For God so loved the world..." (John 3:16 KJV)
INSERT INTO proverbs_chirho (citation_chirho, text_chirho) VALUES
(''Proverbs 3:5-6'', ''Trust in the LORD with all thine heart; and lean not unto thine own understanding. In all thy ways acknowledge him, and he shall direct thy paths.''),
(''Proverbs 4:23'', ''Keep thy heart with all diligence; for out of it are the issues of life.''),
(''Proverbs 9:10'', ''The fear of the LORD is the beginning of wisdom: and the knowledge of the holy is understanding.''),
(''Proverbs 15:1'', ''A soft answer turneth away wrath: but grievous words stir up anger.''),
(''Proverbs 16:9'', ''A man''''s heart deviseth his way: but the LORD directeth his steps.''),
(''Proverbs 18:10'', ''The name of the LORD is a strong tower: the righteous runneth into it, and is safe.''),
(''Proverbs 27:17'', ''Iron sharpeneth iron; so a man sharpeneth the countenance of his friend.'');
EOF
    echo "✅ Created seed file: $TARGET_SQL_FILE_CHIRHO"
fi

# --- 3. Create the HTML App file (the client) ---
if [[ ! -f "$TARGET_HTML_APP_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_APP_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Proverbs Wisdom Jar</title>
    <style>
        body { font-family: system-ui, sans-serif; background: #fdfaf6; color: #4a2c2a; line-height: 1.7; margin: 0; padding: 20px; }
        #container-chirho { max-width: 700px; margin: 20px auto; }
        h1, h2 { text-align: center; color: #8c5a3c; }
        .jar-container-chirho { text-align: center; margin: 40px 0; }
        #proverb-box-chirho { min-height: 120px; background: white; padding: 20px; border-radius: 10px; border: 2px dashed #d4c4b3; margin-bottom: 20px; }
        #proverb-text-chirho { font-size: 1.2em; font-style: italic; }
        #proverb-citation-chirho { font-weight: bold; margin-top: 10px; color: #8c5a3c; }
        button { font-size: 1.2em; padding: 15px 30px; border-radius: 8px; border: none; background: #8c5a3c; color: white; font-weight: bold; cursor: pointer; }
        #reflection-form-chirho { display: none; margin-top: 20px; }
        textarea { width: 100%; height: 80px; font-family: inherit; padding: 10px; border-radius: 5px; border: 1px solid #ccc; box-sizing: border-box; }
        .reflections-list-chirho { margin-top: 40px; border-top: 2px solid #d4c4b3; padding-top: 20px; }
        .reflection-item-chirho { background: white; padding: 15px; border-radius: 5px; margin-bottom: 15px; border-left: 4px solid #d4c4b3; }
        .reflection-item-chirho blockquote { margin: 0 0 10px 0; font-style: italic; }
        .reflection-item-chirho small { color: #888; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>The Proverbs Wisdom Jar 🏺</h1>
        <div class="jar-container-chirho">
            <div id="proverb-box-chirho">
                <p id="proverb-text-chirho">Click the button to draw a Proverb and meditate on God''s wisdom.</p>
                <p id="proverb-citation-chirho"></p>
            </div>
            <button onclick="drawProverbChirho()">Draw a Proverb</button>
            <form id="reflection-form-chirho">
                <h3>Your Reflection:</h3>
                <textarea id="reflection-text-chirho" required></textarea><br><br>
                <button type="submit">Save Reflection</button>
            </form>
        </div>
        <div id="reflections-container-chirho">
            <h2>Your Reflections</h2>
            <div id="reflections-list-chirho"><p>Your saved reflections will appear here.</p></div>
        </div>
    </div>
    <script>
        let currentProverbIdChirho = null;

        async function drawProverbChirho() {
            document.getElementById(''proverb-text-chirho'').textContent = ''Drawing...'';
            document.getElementById(''proverb-citation-chirho'').textContent = '''';

            const responseChirho = await fetch(''/api/proverb-chirho'');
            const dataChirho = await responseChirho.json();

            document.getElementById(''proverb-text-chirho'').textContent = `"${dataChirho.text_chirho}"`;
            document.getElementById(''proverb-citation-chirho'').textContent = `- ${dataChirho.citation_chirho}`;
            currentProverbIdChirho = dataChirho.id_chirho;
            document.getElementById(''reflection-form-chirho'').style.display = ''block'';
        }

        async function loadReflectionsChirho() {
            const responseChirho = await fetch(''/api/reflections-chirho'');
            const reflectionsChirho = await responseChirho.json();
            const listElementChirho = document.getElementById(''reflections-list-chirho'');
            listElementChirho.innerHTML = '''';
            if (reflectionsChirho.length > 0) {
                reflectionsChirho.forEach(reflectionChirho => {
                    const itemChirho = document.createElement(''div'');
                    itemChirho.className = ''reflection-item-chirho'';
                    const dateChirho = new Date(reflectionChirho.timestamp_chirho).toLocaleDateString();
                    itemChirho.innerHTML = `
                        <blockquote>${reflectionChirho.reflection_text_chirho}</blockquote>
                        <small>On ${dateChirho}, reflecting on: <strong>${reflectionChirho.citation_chirho}</strong></small>`;
                    listElementChirho.appendChild(itemChirho);
                });
            } else {
                listElementChirho.innerHTML = ''<p>You have not saved any reflections yet.</p>'';
            }
        }

        document.getElementById(''reflection-form-chirho'').addEventListener(''submit'', async (eventChirho) => {
            eventChirho.preventDefault();
            const reflectionTextChirho = document.getElementById(''reflection-text-chirho'').value;
            await fetch(''/api/reflect-chirho'', {
                method: ''POST'',
                headers: { ''Content-Type'': ''application/json'' },
                body: JSON.stringify({
                    proverbIdChirho: currentProverbIdChirho,
                    reflectionTextChirho: reflectionTextChirho
                })
            });
            document.getElementById(''reflection-text-chirho'').value = '''';
            document.getElementById(''reflection-form-chirho'').style.display = ''none'';
            document.getElementById(''proverb-text-chirho'').textContent = ''Reflection saved! Draw another Proverb.'';
            document.getElementById(''proverb-citation-chirho'').textContent = ''Hallelujah!'';
            loadReflectionsChirho(); // Refresh the list
        });

        // Load reflections when the page first opens
        document.addEventListener(''DOMContentLoaded'', loadReflectionsChirho);
    </script>
</body>
</html>
EOF
    echo "✅ Created app file: $TARGET_HTML_APP_FILE_CHIRHO"
fi

# --- 4. Create the JS server program ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";
import { file } from "bun";

const dbChirho = new Database("wisdom-jar-chirho.sqlite");

async function setupDatabaseChirho() {
    dbChirho.run(`CREATE TABLE IF NOT EXISTS proverbs_chirho (id_chirho INTEGER PRIMARY KEY, citation_chirho TEXT, text_chirho TEXT);`);
    dbChirho.run(`CREATE TABLE IF NOT EXISTS reflections_chirho (id_chirho INTEGER PRIMARY KEY, proverb_id_chirho INTEGER, reflection_text_chirho TEXT NOT NULL, timestamp_chirho DATETIME DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (proverb_id_chirho) REFERENCES proverbs_chirho(id_chirho));`);
    const proverbCountChirho = dbChirho.query("SELECT COUNT(*) as count FROM proverbs_chirho;").get().count;
    if (proverbCountChirho === 0) {
        console.log("Database is empty. Seeding...");
        const seedSqlChirho = await file(''seed-chirho.sql'').text();
        dbChirho.exec(seedSqlChirho);
        console.log("Database seeded successfully. Hallelujah!");
    }
}

async function handleApiRequestChirho(requestChirho) {
    const urlChirho = new URL(requestChirho.url);
    if (urlChirho.pathname === ''/api/proverb-chirho'') {
        const randomProverbChirho = dbChirho.query("SELECT * FROM proverbs_chirho ORDER BY RANDOM() LIMIT 1;").get();
        return new Response(JSON.stringify(randomProverbChirho), { headers: { "Content-Type": "application/json" } });
    }
    if (urlChirho.pathname === ''/api/reflections-chirho'') {
        const allReflectionsChirho = dbChirho.query("SELECT r.*, p.citation_chirho FROM reflections_chirho r JOIN proverbs_chirho p ON r.proverb_id_chirho = p.id_chirho ORDER BY r.timestamp_chirho DESC;").all();
        return new Response(JSON.stringify(allReflectionsChirho), { headers: { "Content-Type": "application/json" } });
    }
    if (urlChirho.pathname === ''/api/reflect-chirho'' && requestChirho.method === ''POST'') {
        const bodyChirho = await requestChirho.json();
        dbChirho.query("INSERT INTO reflections_chirho (proverb_id_chirho, reflection_text_chirho) VALUES (?, ?);").run(bodyChirho.proverbIdChirho, bodyChirho.reflectionTextChirho);
        return new Response(JSON.stringify({ success: true }), { headers: { "Content-Type": "application/json" } });
    }
    return new Response("API endpoint not found.", { status: 404 });
}

async function fetchChirho(requestChirho) {
    const urlChirho = new URL(requestChirho.url);
    if (urlChirho.pathname.startsWith("/api/")) {
        return await handleApiRequestChirho(requestChirho);
    }
    if (urlChirho.pathname === "/") {
        return new Response(file("app-chirho.html"));
    }
    return new Response("Not Found", { status: 404 });
}

async function mainChirho() {
    await setupDatabaseChirho();
    const serverChirho = Bun.serve({
        port: 8000,
        hostname: "0.0.0.0",
        fetch: fetchChirho,
    });
    console.log(`Hallelujah! The Proverbs Wisdom Jar server is running at http://localhost:${serverChirho.port}`);
}

mainChirho();
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week11-session1-chirho.sh',
  111,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 11 Session 2 (payload-week11-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '10jDmxA5c4_9aSes1PpHr',
  'Week 11 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 11, Session 2',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 11, Session 2
# This script creates the "Don''t Sin" Darts game and the boilerplate for Project 2.

# --- Output initial messages ---
echo "Payload for Week 11 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-11-chirho/session-2-chirho"
PROJECT_DIR_CHIRHO="$HOME/Downloads/cp-chirho/project-2-chirho"
DB_URL_CHIRHO="https://media-cp2025fe.sonshinewarriors.org/misc-chirho/kjv-bible-verses-chirho.sqlite"
DB_FILE_CHIRHO="$PROJECT_DIR_CHIRHO/kjv-bible-verses-chirho.sqlite"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"
mkdir -p "$PROJECT_DIR_CHIRHO"

# ==============================================================================
# === SESSION 2: "Don''t Sin" Darts Game ========================================
# ==============================================================================

echo "Creating the ''Don''t Sin'' Darts game for today''s session..."

if [[ ! -f "$SESSION_DIR_CHIRHO/index.html" ]]; then
    cat << ''EOF'' > "$SESSION_DIR_CHIRHO/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Don''t Sin - The Darts Game</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <style>
        body { margin: 0; background-color: #3a2d25; font-family: system-ui, sans-serif; color: white; display: flex; justify-content: center; align-items: center; height: 100vh; text-align: center; }
        #game-container-chirho { position: relative; width: 800px; height: 600px; background-image: url(''https://www.transparenttextures.com/patterns/wood-wall.png''); }
        #game-canvas-chirho { display: block; }
        #message-overlay-chirho { position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.7); display: none; justify-content: center; align-items: center; flex-direction: column; }
        #message-text-chirho { font-size: 2em; max-width: 80%; }
        #message-verse-chirho { font-style: italic; margin-top: 20px; color: #ccc; }
    </style>
</head>
<body>
    <div id="game-container-chirho">
        <canvas id="game-canvas-chirho"></canvas>
        <div id="message-overlay-chirho">
            <h1 id="message-text-chirho"></h1>
            <p id="message-verse-chirho"></p>
        </div>
    </div>
    <script>
        // "For God so loved the world..." (John 3:16 KJV)
        const canvasChirho = document.getElementById(''game-canvas-chirho'');
        const ctxChirho = canvasChirho.getContext(''2d'');
        canvasChirho.width = 800;
        canvasChirho.height = 600;

        const messageOverlayChirho = document.getElementById(''message-overlay-chirho'');
        const messageTextChirho = document.getElementById(''message-text-chirho'');
        const messageVerseChirho = document.getElementById(''message-verse-chirho'');

        let rotationChirho = 0;
        let gameStateChirho = ''aiming''; // aiming, throwing, result

        const musicChirho = new Tone.Player({
            url: "https://cp.loveJes.us/payloads-chirho/misc-chirho/hymn-loop-chirho.mp3",
            loop: true,
            autostart: true,
            volume: -10,
        }).toDestination();
        const whooshChirho = new Tone.NoiseSynth({ noise: { type: ''pink'' }, envelope: { attack: 0.01, decay: 0.3, sustain: 0 } }).toDestination();
        const thudChirho = new Tone.MembraneSynth().toDestination();
        const chimeChirho = new Tone.Synth().toDestination();

        function drawDartboardChirho() {
            ctxChirho.clearRect(0, 0, canvasChirho.width, canvasChirho.height);
            ctxChirho.save();
            ctxChirho.translate(canvasChirho.width / 2, canvasChirho.height / 2);
            ctxChirho.rotate(rotationChirho);

            // Draw board
            const radiusChirho = 200;
            const colorsChirho = [''#000000'', ''#F0DBC3''];
            for (let i = 0; i < 20; i++) {
                ctxChirho.beginPath();
                ctxChirho.moveTo(0, 0);
                ctxChirho.arc(0, 0, radiusChirho, (i * Math.PI) / 10, ((i + 1) * Math.PI) / 10);
                ctxChirho.fillStyle = colorsChirho[i % 2];
                ctxChirho.fill();
            }
            // Bullseye
            ctxChirho.beginPath(); ctxChirho.arc(0, 0, 30, 0, 2 * Math.PI); ctxChirho.fillStyle = ''#C20000''; ctxChirho.fill();
            ctxChirho.beginPath(); ctxChirho.arc(0, 0, 15, 0, 2 * Math.PI); ctxChirho.fillStyle = ''#000000''; ctxChirho.fill();

            ctxChirho.restore();
        }

        function drawDartChirho(yPos) {
            ctxChirho.fillStyle = ''#654321'';
            ctxChirho.fillRect(canvasChirho.width / 2 - 5, yPos, 10, 50);
            ctxChirho.fillStyle = ''#AAAAAA'';
            ctxChirho.beginPath(); ctxChirho.moveTo(canvasChirho.width / 2 - 5, yPos); ctxChirho.lineTo(canvasChirho.width / 2 + 5, yPos); ctxChirho.lineTo(canvasChirho.width / 2, yPos - 20); ctxChirho.fill();
        }

        let dartYChirho = canvasChirho.height - 70;

        function gameLoopChirho() {
            if (gameStateChirho === ''aiming'') {
                rotationChirho += 0.05;
                drawDartboardChirho();
                drawDartChirho(dartYChirho);
            } else if (gameStateChirho === ''throwing'') {
                dartYChirho -= 30;
                drawDartboardChirho();
                drawDartChirho(dartYChirho);
                if (dartYChirho <= canvasChirho.height / 2) {
                    gameStateChirho = ''result'';
                    const finalRotation = (rotationChirho % (2 * Math.PI) + 2 * Math.PI) % (2 * Math.PI);
                    if (finalRotation > 0.3 && finalRotation < 5.9) { // Missed the top/bullseye area
                        thudChirho.triggerAttackRelease(''C2'', ''8n'');
                        messageTextChirho.textContent = "You missed the mark!";
                        messageVerseChirho.textContent = "The Greek word for sin, hamartia, means ''to miss the mark.'' But praise God, ''If we confess our sins, he is faithful and just to forgive us our sins...'' (1 John 1:9). Run to Jesus!";
                    } else {
                        chimeChirho.triggerAttackRelease(''C5'', ''4n'');
                        messageTextChirho.textContent = "Bullseye! Hallelujah!";
                        messageVerseChirho.textContent = "''...I press toward the mark for the prize of the high calling of God in Christ Jesus.'' (Philippians 3:14)";
                    }
                    messageOverlayChirho.style.display = ''flex'';
                }
            }
            requestAnimationFrame(gameLoopChirho);
        }

        window.addEventListener(''click'', () => {
            if (gameStateChirho === ''aiming'') {
                if (Tone.context.state !== ''running'') Tone.start();
                gameStateChirho = ''throwing'';
                whooshChirho.triggerAttackRelease(''4n'');
            } else if (gameStateChirho === ''result'') {
                gameStateChirho = ''aiming'';
                dartYChirho = canvasChirho.height - 70;
                messageOverlayChirho.style.display = ''none'';
            }
        });

        gameLoopChirho();
    </script>
</body>
</html>
EOF
    echo "✅ Created darts game for session 2."
fi

# ==============================================================================
# === PROJECT 2: Bible Commentary App Boilerplate ==============================
# ==============================================================================

echo "Creating boilerplate files for Project 2..."

# --- 1. Download the verses database ---
# if [[ ! -f "$DB_FILE_CHIRHO" ]]; then
    echo "Downloading Bible verses database for Project 2..."
    curl -L -o "$DB_FILE_CHIRHO" "$DB_URL_CHIRHO"
    echo "✅ Database downloaded."
# fi

# --- 2. Create README.md ---
cat << ''EOF'' > "$PROJECT_DIR_CHIRHO/README.md"
# Project 2: Personal Bible Commentary App

Hallelujah! This is the starting point for our second major project: a full client-server web application that will allow us to read and write our own personal commentary on any verse in the Bible.

## The Goal

Our mission is to build an application that:
1.  Uses a Bun server to serve a web page.
2.  Reads from the pre-made `kjv-bible-verses-chirho.sqlite` database to display any chapter of the Bible.
3.  Allows a user to click on any verse.
4.  When a verse is clicked, shows a pop-up window (a modal) where the user can write and save a comment.
5.  Saves this comment to a new `comments` table in the database, linking it to the specific verse.
6.  Displays a star ⭐ next to any verse that has a comment.
7.  Allows a user to click the star to view their saved comment.

This project will teach us about client-server architecture, API design, and database relationships. God bless our work!
EOF
echo "✅ Created Project 2 README.md"

# --- 3. Create server-chirho.js ---
cat << ''EOF'' > "$PROJECT_DIR_CHIRHO/server-chirho.js"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { file } from ''bun'';
import { Database } from "bun:sqlite";

const dbChirho = new Database("kjv-bible-verses-chirho.sqlite");

function apiChirho(requestChirho) {
    console.log("API endpoint was hit!");
    const dataChirho = { message: "API under development. Hallelujah!" };
    return new Response(JSON.stringify(dataChirho), {
        headers: { "Content-Type": "application/json" },
    });
}

function fetchChirho(requestChirho) {
    const urlChirho = new URL(requestChirho.url);

    // Serve the main HTML file
    if (urlChirho.pathname === "/") {
        return new Response(file("client-chirho.html"));
    }
    // Serve the CSS file
    // ...
    // Serve the client-side JavaScript file
    // ...

    // Handle API requests
    if (urlChirho.pathname === "/api-chirho") {
        return apiChirho(requestChirho);
    }

    // Handle errors
    return new Response("Not Found", { status: 404 });
}

const serverChirho = Bun.serve({
  port: 8000,
  hostname: "0.0.0.0",

  fetch: fetchChirho,

  error(errorChirho) {
    console.error(errorChirho);
    return new Response("An error occurred.", { status: 500 });
  }
});

console.log(`Hallelujah! Project 2 server is running at http://localhost:${serverChirho.port}`);
EOF
echo "✅ Created Project 2 server-chirho.js"

# --- 4. Create client-chirho.html ---
cat << ''EOF'' > "$PROJECT_DIR_CHIRHO/client-chirho.html"
<!DOCTYPE html>
<!-- "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV) -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bible Commentary</title>
    <link rel="stylesheet" href="client-chirho.css">
</head>
<body>
    <h1>Personal Bible Commentary App</h1>
    <p>Project 2 is under construction. Hallelujah!</p>

    <script src="client-chirho.js" defer></script>
</body>
</html>
EOF
echo "✅ Created Project 2 client-chirho.html"

# --- 5. Create client-chirho.js ---
cat << ''EOF'' > "$PROJECT_DIR_CHIRHO/client-chirho.js"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

console.log("Client-side JavaScript loaded. God is good!");
EOF
echo "✅ Created Project 2 client-chirho.js"

# --- 6. Create client-chirho.css ---
cat << ''EOF'' > "$PROJECT_DIR_CHIRHO/client-chirho.css"
/* "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV) */

body {
    font-family: system-ui, sans-serif;
    line-height: 1.6;
    background-color: #f0f4f8;
    color: #333;
    padding: 20px;
}
EOF
echo "✅ Created Project 2 client-chirho.css"

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week11-session2-chirho.sh',
  112,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 11 Session 3 (payload-week11-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '5omlNisYtI0Hj3smh0KlD',
  'Week 11 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 11, Session 3',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 11, Session 3
# This script creates the "Noah''s Ark Sort" game.

# --- Output initial messages ---
echo "Payload for Week 11 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-11-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 3: "Noah''s Ark Sort" Game ========================================
# ==============================================================================

echo "Creating the ''Noah''s Ark Sort'' game..."

if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    # Create the HTML file using a ''here document''. Use quotes around EOF to prevent shell expansion.
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noah''s Ark Sort</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <style>
        body { margin: 0; background-color: #a0d8ef; font-family: system-ui, sans-serif; display: flex; flex-direction: column; align-items: center; justify-content: space-between; height: 100vh; overflow: hidden; }
        #ark-container-chirho { width: 400px; height: 250px; background-color: #8B4513; border: 5px solid #5a2d0c; border-bottom: none; border-radius: 50% 50% 0 0 / 100% 100% 0 0; position: relative; margin-top: 5vh; box-shadow: 0 10px 20px rgba(0,0,0,0.3); }
        #ark-cabin-chirho { width: 150px; height: 100px; background-color: #a0522d; border: 3px solid #5a2d0c; position: absolute; bottom: 100px; left: 50%; transform: translateX(-50%); border-radius: 5px; }
        /* Corrected Roof Styling */
        #ark-roof-chirho {
            width: 180px;
            height: 0;
            border-left: 90px solid transparent;
            border-right: 90px solid transparent;
            border-bottom: 50px solid #5a2d0c;
            position: absolute;
            top: -53px; /* Adjusted slightly */
            left: 50%; /* Center the base */
            transform: translateX(-50%); /* Center the base */
        }
        /* New area for boarded animals */
        #boarded-animals-chirho {
            position: absolute;
            bottom: 10px;
            left: 10px;
            right: 10px;
            height: 80px;
            background: rgba(0,0,0,0.2);
            border-radius: 5px;
            padding: 5px;
            overflow: hidden;
            font-size: 1.5em; /* Smaller emojis inside */
            line-height: 1.2;
            text-align: left;
        }
        #animals-area-chirho { width: 90%; max-width: 800px; height: 40vh; background-color: #228B22; border: 5px solid #006400; border-radius: 10px; margin-bottom: 5vh; position: relative; display: flex; flex-wrap: wrap; justify-content: center; align-items: center; gap: 15px; padding: 15px; box-sizing: border-box; }
        .animal-chirho { font-size: 3em; cursor: pointer; transition: transform 0.2s, opacity 0.3s; user-select: none; }
        .animal-chirho:hover { transform: scale(1.2); }
        .animal-chirho.selected-chirho { transform: scale(1.1); box-shadow: 0 0 15px yellow; border-radius: 50%; }
        .animal-chirho.matched-chirho { opacity: 0.3; pointer-events: none; transform: translateY(-50px) scale(0.5); /* Animate towards ark slightly */ }
        #timer-chirho { position: absolute; top: 10px; right: 10px; font-size: 1.5em; color: #000; background: rgba(255,255,255,0.7); padding: 5px 10px; border-radius: 5px; }
        #score-chirho { position: absolute; top: 10px; left: 10px; font-size: 1.5em; color: #000; background: rgba(255,255,255,0.7); padding: 5px 10px; border-radius: 5px; }
    </style>
</head>
<body>
    <div id="ark-container-chirho">
        <div id="ark-cabin-chirho"><div id="ark-roof-chirho"></div></div>
        <div id="boarded-animals-chirho"></div>
    </div>
    <div id="animals-area-chirho"></div>
    <div id="timer-chirho">Time: 60</div>
    <div id="score-chirho">Pairs: 0</div>

    <script>
        // "For God so loved the world..." (John 3:16 KJV)
        const animalsAreaChirho = document.getElementById(''animals-area-chirho'');
        const timerElementChirho = document.getElementById(''timer-chirho'');
        const scoreElementChirho = document.getElementById(''score-chirho'');
        const boardedAnimalsDivChirho = document.getElementById(''boarded-animals-chirho''); // Get the new div

        const animalEmojisChirho = [''🐘'',''🐘'',''🦒'',''🦒'',''🦁'',''🦁'',''🐅'',''🐅'',''🦓'',''🦓'',''🐒'',''🐒'',''🐍'',''🐍'',''🦜'',''🦜''];
        let firstSelectionChirho = null;
        let secondSelectionChirho = null;
        let scoreChirho = 0;
        let timeLeftChirho = 100;
        let timerIntervalChirho = null;

        const clickSynthChirho = new Tone.Synth({ oscillator: { type: ''sine'' }, envelope: { attack: 0.01, release: 0.1 } }).toDestination();
        const matchSynthChirho = new Tone.Synth({ oscillator: { type: ''triangle'' }, envelope: { attack: 0.01, release: 0.3 } }).toDestination();
        const errorSynthChirho = new Tone.Synth({ oscillator: { type: ''square'' }, envelope: { attack: 0.02, decay: 0.1, sustain: 0, release: 0.1 } }).toDestination();

        function shuffleArrayChirho(arrayParameterChirho) {
            for (let i = arrayParameterChirho.length - 1; i > 0; i--) {
                const j = Math.floor(Math.random() * (i + 1));
                [arrayParameterChirho[i], arrayParameterChirho[j]] = [arrayParameterChirho[j], arrayParameterChirho[i]];
            }
        }

        function createAnimalElementChirho(emojiParameterChirho) {
            const divChirho = document.createElement(''div'');
            divChirho.className = ''animal-chirho'';
            divChirho.textContent = emojiParameterChirho;
            divChirho.addEventListener(''click'', handleAnimalClickChirho);
            return divChirho;
        }

        function handleAnimalClickChirho(eventParameterChirho) {
            const clickedAnimalChirho = eventParameterChirho.target;
            if (clickedAnimalChirho === firstSelectionChirho || clickedAnimalChirho.classList.contains(''matched-chirho'')) {
                return;
            }

            if (Tone.context.state !== ''running'') Tone.start();
            clickSynthChirho.triggerAttackRelease(''C4'', ''16n'');
            clickedAnimalChirho.classList.add(''selected-chirho'');

            if (!firstSelectionChirho) {
                firstSelectionChirho = clickedAnimalChirho;
            } else {
                secondSelectionChirho = clickedAnimalChirho;
                animalsAreaChirho.style.pointerEvents = ''none'';
                setTimeout(checkMatchChirho, 500);
            }
        }

        function checkMatchChirho() {
            if (firstSelectionChirho.textContent === secondSelectionChirho.textContent) {
                firstSelectionChirho.classList.add(''matched-chirho'');
                secondSelectionChirho.classList.add(''matched-chirho'');
                scoreChirho++;
                scoreElementChirho.textContent = `Pairs: ${scoreChirho}`;
                matchSynthChirho.triggerAttackRelease(''G5'', ''8n'');

                // Add the emoji to the ark!
                boardedAnimalsDivChirho.textContent += firstSelectionChirho.textContent;

                if (scoreChirho === animalEmojisChirho.length / 2) {
                    endGameChirho(true);
                }
            } else {
                errorSynthChirho.triggerAttackRelease(''C3'', ''8n'');
                firstSelectionChirho.classList.remove(''selected-chirho'');
                secondSelectionChirho.classList.remove(''selected-chirho'');
            }
            firstSelectionChirho = null;
            secondSelectionChirho = null;
            animalsAreaChirho.style.pointerEvents = ''auto'';
        }

        function startGameChirho() {
            shuffleArrayChirho(animalEmojisChirho);
            animalsAreaChirho.innerHTML = '''';
            boardedAnimalsDivChirho.textContent = ''''; // Clear boarded animals
            animalEmojisChirho.forEach(emojiParameterChirho => {
                animalsAreaChirho.appendChild(createAnimalElementChirho(emojiParameterChirho));
            });
            scoreChirho = 0;
            timeLeftChirho = 100;
            scoreElementChirho.textContent = `Pairs: 0`;
            timerElementChirho.textContent = `Time: ${timeLeftChirho}`;

            clearInterval(timerIntervalChirho);
            // Make the timer 10x faster (100ms interval)
            timerIntervalChirho = setInterval(() => {
                timeLeftChirho--;
                timerElementChirho.textContent = `Time: ${timeLeftChirho}`;
                if (timeLeftChirho <= 0) {
                    endGameChirho(false);
                }
            }, 110); // 100ms = 60 ticks in 6 seconds
        }

        function endGameChirho(playerWonParameterChirho) {
            clearInterval(timerIntervalChirho);
            if (playerWonParameterChirho) {
                alert(`Hallelujah! You saved all the pairs!\n"And of every living thing of all flesh, two of every sort shalt thou bring into the ark..." (Genesis 6:19)`);
            } else {
                alert(`The flood came! Try again to save all the animals.\n"But Noah found grace in the eyes of the LORD." (Genesis 6:8)`);
            }
            startGameChirho();
        }

        document.addEventListener(''DOMContentLoaded'', startGameChirho);
    </script>
</body>
</html>
EOF
    echo "✅ Created Noah''s Ark game for session 3."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week11-session3-chirho.sh',
  113,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 12 Session 1 (payload-week12-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'wO1LGDfIw0HNPz2NMrC6z',
  'Week 12 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 12, Session 1',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 12, Session 1
# This script creates the "Jacob''s Ladder" game with accelerating difficulty.

# --- Output initial messages ---
echo "Payload for Week 12 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-12-chirho/session-1-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 1: "Jacob''s Ladder" Game ========================================
# ==============================================================================

echo "Creating the ''Jacob''s Ladder'' game..."

if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    # Create the HTML file using a ''here document''.
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Jacob''s Ladder</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <style>
        body { margin: 0; background-color: #0b192f; display: flex; justify-content: center; align-items: center; height: 100vh; overflow: hidden; font-family: system-ui, sans-serif; color: #e0e7ff; }
        #game-container-chirho { position: relative; display: flex; align-items: center; gap: 30px; }
        #game-canvas-chirho { border: 5px solid #a0522d; background-color: #1a2a4a; }
        #message-chirho { position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background: rgba(0,0,0,0.8); color: white; padding: 20px 40px; border-radius: 10px; font-size: 1.5em; text-align: center; display: none; z-index: 10; }
        .side-panel-chirho { width: 200px; text-align: center; padding: 20px; background-color: rgba(26, 42, 74, 0.7); border-radius: 10px; }
        .side-panel-chirho h3 { color: #f6e05e; margin-top: 0; }
        .side-panel-chirho p { font-size: 0.9em; line-height: 1.5; }
        #timer-chirho { position: absolute; top: 10px; left: 50%; transform: translateX(-50%); font-size: 1.5em; color: #f6e05e; background: rgba(0,0,0,0.7); padding: 5px 15px; border-radius: 5px; z-index: 5;}
    </style>
</head>
<body>
    <div id="game-container-chirho">
        <div id="instructions-chirho" class="side-panel-chirho">
            <h3>Instructions</h3>
            <p>Click or Tap when the sparkle ✨ is directly over Jacob to help Jacob climb.</p>
            <p>Be precise! The timing gets faster. If you miss, you fall back to the bottom.</p>
            <p>This is difficult, if only there was some way to change the laws of this universe...</p>
            <p><strong>Hint:</strong> If it''s too hard, look inside the code for <code>baseIndicatorSpeedChirho</code>...  something else might help more!</p>
        </div>

        <canvas id="game-canvas-chirho"></canvas>

        <div id="verse-chirho" class="side-panel-chirho">
            <h3>Genesis 28:12</h3>
            <p>"And he dreamed, and behold a ladder set up on the earth, and the top of it reached to heaven: and behold the angels of God ascending and descending on it."</p>
        </div>

        <div id="message-chirho"></div>
        <div id="timer-chirho">Time: 60s</div>
    </div>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        const canvasChirho = document.getElementById(''game-canvas-chirho'');
        const ctxChirho = canvasChirho.getContext(''2d'');
        const messageElementChirho = document.getElementById(''message-chirho'');
        const timerElementChirho = document.getElementById(''timer-chirho'');

        canvasChirho.width = Math.min(window.innerWidth * 0.4, 400);
        canvasChirho.height = Math.min(window.innerHeight * 0.9, 700);

        // --- Game Configuration (Intentional Difficulty!) ---
        const baseIndicatorSpeedChirho = 4; // Starting speed.
        const speedAccelerationChirho = 1.8; // How much faster it gets per rung.
        const timingWindowChirho = 17;   // Pixels +/- from center we can be from the star, 17 is pretty small
        const ladderRungsChirho = 15;
        const rungSpacingChirho = canvasChirho.height / (ladderRungsChirho + 1);
        const ladderWidthChirho = 80;

        // --- Game State ---
        let jacobRungChirho = 0;
        let indicatorXChirho = canvasChirho.width / 2;
        let indicatorDirectionChirho = 1;
        let gameStateChirho = ''playing'';
        let gameTimeLeftChirho = 60;
        let lastTimerUpdateChirho = Date.now();
        let currentIndicatorSpeedChirho = baseIndicatorSpeedChirho;

        // --- Sound Effects ---
        const stepSynthChirho = new Tone.Synth({ oscillator: { type: ''sine'' }, envelope: { attack: 0.01, release: 0.1 } }).toDestination();
        const missSynthChirho = new Tone.Synth({ oscillator: { type: ''square'' }, envelope: { attack: 0.05, decay: 0.3, sustain: 0, release: 0.1 } }).toDestination();
        const winSynthChirho = new Tone.PluckSynth().toDestination();

        // --- Drawing Functions ---
        function drawLadderChirho() {
            const ladderCenterXChirho = canvasChirho.width / 2;
            ctxChirho.strokeStyle = ''#a0522d'';
            ctxChirho.lineWidth = 10;
            ctxChirho.beginPath();
            ctxChirho.moveTo(ladderCenterXChirho - ladderWidthChirho / 2, 0);
            ctxChirho.lineTo(ladderCenterXChirho - ladderWidthChirho / 2, canvasChirho.height);
            ctxChirho.moveTo(ladderCenterXChirho + ladderWidthChirho / 2, 0);
            ctxChirho.lineTo(ladderCenterXChirho + ladderWidthChirho / 2, canvasChirho.height);
            ctxChirho.stroke();
            ctxChirho.lineWidth = 6;
            for (let iChirho = 1; iChirho <= ladderRungsChirho; iChirho++) {
                const yChirho = canvasChirho.height - iChirho * rungSpacingChirho;
                ctxChirho.beginPath();
                ctxChirho.moveTo(ladderCenterXChirho - ladderWidthChirho / 2, yChirho);
                ctxChirho.lineTo(ladderCenterXChirho + ladderWidthChirho / 2, yChirho);
                ctxChirho.stroke();
            }
        }

        function drawJacobChirho() {
            const yChirho = canvasChirho.height - jacobRungChirho * rungSpacingChirho - 20;
            ctxChirho.font = ''40px serif'';
            ctxChirho.textAlign = ''center'';
            ctxChirho.fillText(''🚶'', canvasChirho.width / 2, yChirho);
        }

        function drawIndicatorChirho() {
            const yChirho = canvasChirho.height - (jacobRungChirho + 1) * rungSpacingChirho;
            ctxChirho.fillStyle = ''#FFD700'';
            ctxChirho.font = ''40px serif'';
            ctxChirho.fillText(''✨'', indicatorXChirho, yChirho);
        }

        function updateTimerChirho() {
            const nowChirho = Date.now();
            const realMillisecondsPerGameSecond = 500; // 0.5 real seconds per game second

            if (nowChirho - lastTimerUpdateChirho > realMillisecondsPerGameSecond) {
                gameTimeLeftChirho--;
                lastTimerUpdateChirho = nowChirho;
                timerElementChirho.textContent = `Time: ${gameTimeLeftChirho}s`;

                if (gameTimeLeftChirho <= 0) {
                    gameStateChirho = ''gameover'';
                    missSynthChirho.triggerAttackRelease(''A2'',''8n'');
                    messageElementChirho.innerHTML = "Time''s up! But God is faithful.<br><small>''...I am with thee, and will keep thee...'' (Genesis 28:15)</small><br><br><small>(Click/Tap to restart)</small>";
                    messageElementChirho.style.display = ''block'';
                }
            }
        }

        // --- Game Logic ---
        function updateIndicatorChirho() {
            currentIndicatorSpeedChirho = baseIndicatorSpeedChirho + (jacobRungChirho * speedAccelerationChirho * jacobRungChirho);
            indicatorXChirho += indicatorDirectionChirho * currentIndicatorSpeedChirho;
            const leftBoundChirho = 20;
            const rightBoundChirho = canvasChirho.width - 20;
            if (indicatorXChirho > rightBoundChirho || indicatorXChirho < leftBoundChirho) {
                indicatorDirectionChirho *= -1;
                indicatorXChirho = Math.max(leftBoundChirho, Math.min(rightBoundChirho, indicatorXChirho));
            }
        }

        function attemptClimbChirho() {
            if (gameStateChirho !== ''playing'') return;
            if (Tone.context.state !== ''running'') Tone.start();

            const ladderCenterXChirho = canvasChirho.width / 2;
            const distanceToCenterChirho = Math.abs(indicatorXChirho - ladderCenterXChirho);

            if (distanceToCenterChirho <= timingWindowChirho) {
                jacobRungChirho++;
                stepSynthChirho.triggerAttackRelease(`C${4 + jacobRungChirho % 3}`, ''16n'');

                if (jacobRungChirho >= ladderRungsChirho) {
                    gameStateChirho = ''gameover''; // Win state
                    winSynthChirho.triggerAttackRelease(''C5'', ''8n'', Tone.now());
                    winSynthChirho.triggerAttackRelease(''E5'', ''8n'', Tone.now() + 0.1);
                    winSynthChirho.triggerAttackRelease(''G5'', ''8n'', Tone.now() + 0.2);
                    messageElementChirho.innerHTML = "You reached the top! Hallelujah!<br><small>''...and, behold, the LORD stood above it...'' (Genesis 28:13)</small><br><br><small>(Click/Tap to restart)</small>";
                    messageElementChirho.style.display = ''block'';
                }
            } else {
                missSynthChirho.triggerAttackRelease(''A2'',''8n'');
                jacobRungChirho = 0; // Reset rung to 0
            }
        }

        function restartGameChirho() {
             jacobRungChirho = 0;
             indicatorXChirho = canvasChirho.width / 2;
             indicatorDirectionChirho = 1;
             gameStateChirho = ''playing'';
             gameTimeLeftChirho = 60; // Reset timer
             lastTimerUpdateChirho = Date.now(); // Reset timer update point
             timerElementChirho.textContent = `Time: ${gameTimeLeftChirho}s`;
             messageElementChirho.style.display = ''none'';
        }

        // --- Game Loop ---
        function gameLoopChirho() {
            ctxChirho.clearRect(0, 0, canvasChirho.width, canvasChirho.height);
            if (gameStateChirho === ''playing'') {
                updateIndicatorChirho();
                updateTimerChirho();
            }
            drawLadderChirho();
            drawJacobChirho();
            if (gameStateChirho === ''playing'') { drawIndicatorChirho(); }
            requestAnimationFrame(gameLoopChirho);
        }

        // --- Event Listeners ---
        document.body.addEventListener(''click'', () => {
             if (gameStateChirho === ''playing'') {
                 attemptClimbChirho();
             } else if (gameStateChirho === ''gameover'') {
                 restartGameChirho();
             }
        });
         document.body.addEventListener(''touchstart'', (eventChirho) => {
             eventChirho.preventDefault();
             if (gameStateChirho === ''playing'') {
                 attemptClimbChirho();
             } else if (gameStateChirho === ''gameover'') {
                 restartGameChirho();
             }
         }, { passive: false });

        document.addEventListener(''DOMContentLoaded'', () => {
             lastTimerUpdateChirho = Date.now();
             timerElementChirho.textContent = `Time: ${gameTimeLeftChirho}s`;
             gameLoopChirho();
        });
    </script>
</body>
</html>
EOF
    echo "✅ Created Jacob''s Ladder game for session 1."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week12-session1-chirho.sh',
  121,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 12 Session 2 (payload-week12-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'ClII9Ei9mFz8cwT3UIxjz',
  'Week 12 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 12, Session 2',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 12, Session 2
# This script creates the "Day of Pentecost" debugging challenge.

# --- Output initial messages ---
echo "Payload for Week 12 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-12-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_GAME_FILE_CHIRHO="$SESSION_DIR_CHIRHO/game-chirho.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 2: "Day of Pentecost" Debugging Game ==============================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - A New Challenge</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>A New Challenge: Clarity from Confusion 🔥</h1>
        <p>Hallelujah! Today''s activity is different. We have a program that is <strong>intentionally broken</strong>. Your task is not just to play it, but to <strong>fix it</strong> by editing the code.</p>
        <p class="verse-chirho">"And how hear we every man in our own tongue, wherein we were born?" - Acts 2:8</p>
        <p>The miracle of Pentecost brought clarity from confusion. Our program is stuck in confusion—it can only speak one "language." Your job is to find the bug and bring clarity, just as the Holy Spirit did! When you succeed, a special message will appear.</p>

        <h2>How to Run the Program</h2>
        <p>Open the <code>game-chirho.html</code> file in this folder. Try clicking the different buttons. Notice the problem? Now, open the file in your code editor, find the bug in the <code>&lt;script&gt;</code> section, and fix it!</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the "Broken" Game file ---
if [[ ! -f "$TARGET_GAME_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_GAME_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Day of Pentecost</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <style>
        body { margin: 0; background-color: #fff8e1; font-family: ''Times New Roman'', Times, serif; display: flex; flex-direction: column; justify-content: center; align-items: center; height: 100vh; text-align: center; }
        h1 { color: #d9534f; }
        #apostles-chirho { display: flex; gap: 15px; margin: 20px 0; flex-wrap: wrap; justify-content: center; }
        .apostle-button-chirho {
            font-size: 1.5em;
            padding: 15px 25px;
            border: 3px solid #5a4a3a;
            background-color: #f7f3e8;
            color: #5a4a3a;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.2s;
        }
        .apostle-button-chirho:hover { background-color: #efebe0; }
        #message-box-chirho {
            margin-top: 30px;
            width: 80%;
            max-width: 600px;
            min-height: 150px;
            background: #faf8f0;
            border: 2px dashed #c0b09a;
            border-radius: 10px;
            padding: 20px;
        }
        #message-text-chirho { font-size: 1.3em; font-style: italic; color: #333; }
        #crowd-reaction-chirho { font-size: 1.1em; font-weight: bold; margin-top: 15px; }
    </style>
</head>
<body>

    <h1>Day of Pentecost</h1>
    <p>"And they were all filled with the Holy Ghost, and began to speak with other tongues..." (Acts 2:4)</p>

    <div id="apostles-chirho">
        <button class="apostle-button-chirho" onclick="preachChirho(''Peter'')">Peter</button>
        <button class="apostle-button-chirho" onclick="preachChirho(''Andrew'')">Andrew</button>
        <button class="apostle-button-chirho" onclick="preachChirho(''James'')">James</button>
        <button class="apostle-button-chirho" onclick="preachChirho(''John'')">John</button>
    </div>

    <div id="message-box-chirho">
        <div id="message-text-chirho">Click a disciple to hear them speak...</div>
        <div id="crowd-reaction-chirho">The crowd is waiting.</div>
    </div>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        const messageTextElementChirho = document.getElementById(''message-text-chirho'');
        const crowdReactionElementChirho = document.getElementById(''crowd-reaction-chirho'');

        // --- Sound Effects ---
        // A clear, triumphant sound for the correct language
        const trumpetSynthChirho = new Tone.Synth({ oscillator: { type: ''pwm'' }, envelope: { attack: 0.05, release: 0.3 } }).toDestination();
        // A low, dissonant sound for the wrong language
        const failSynthChirho = new Tone.Synth({ oscillator: { type: ''square'' }, envelope: { attack: 0.05, decay: 0.3, sustain: 0, release: 0.1 } }).toDestination();

        // This is our data. It now includes the specific crowd.
        const discipleLanguageMapChirho = {
            ''Peter'': { crowdChirho: ''Greek'', messageChirho: ''in Greek: "Μετανοήσατε!" (Repent!)'' },
            ''Andrew'': { crowdChirho: ''Parthian'', messageChirho: ''in Parthian: "پشیمان شو!" (Repent!)'' },
            ''James'': { crowdChirho: ''Median'', messageChirho: ''in Median: "..." (Repent!)'' },
            ''John'': { crowdChirho: ''Elamite'', messageChirho: ''in Elamite: "..." (Repent!)'' }
        };

        let spokenLanguagesChirho = new Set();

        function preachChirho(discipleNameChirho) {
            if (Tone.context.state !== ''running'') Tone.start();

            // --- !!! THE BUG IS HERE !!! ---
            // This line is hard-coded to always get the language for ''Peter'',
            // no matter which disciple you click!
            const languageObjectChirho = discipleLanguageMapChirho[''Peter''];

            // --- THE (BETTER) HINT ---
            // Look closely at the line above. Why is it *always* getting the
            // language for ''Peter''? How could you use the ''discipleNameChirho''
            // variable to get the *correct* disciple''s language from the map?
            // ---------------------------------

            if (languageObjectChirho) {
                // Display the message that was spoken
                messageTextElementChirho.textContent = `${discipleNameChirho} speaks... ${languageObjectChirho.messageChirho}`;

                const correctLanguageObjectChirho = discipleLanguageMapChirho[discipleNameChirho];

                // --- WIN CONDITION CHECK ---
                if (languageObjectChirho.messageChirho === correctLanguageObjectChirho.messageChirho) {
                    // The bug is fixed!
                    spokenLanguagesChirho.add(languageObjectChirho.messageChirho);
                    crowdReactionElementChirho.textContent = `The ${correctLanguageObjectChirho.crowdChirho} crowd understands him! Hallelujah!`;
                    trumpetSynthChirho.triggerAttackRelease(''C5'', ''8n''); // Play good sound

                    // Check if all disciples have spoken correctly
                    if (spokenLanguagesChirho.size === Object.keys(discipleLanguageMapChirho).length) {
                         // Use a timeout to let the student read the last message first
                         setTimeout(() => {
                            messageTextElementChirho.textContent += " - You fixed the code! The miracle is complete!";
                            crowdReactionElementChirho.textContent += " - ''...we do hear them speak in our tongues the wonderful works of God.'' (Acts 2:11)";
                            trumpetSynthChirho.triggerAttackRelease(''G5'', ''4n'');
                         }, 500); // Wait 2 seconds
                    }
                } else {
                    // The bug is still present.
                    failSynthChirho.triggerAttackRelease(''A2'', ''8n''); // Play bad sound
                    crowdReactionElementChirho.textContent = `The ${correctLanguageObjectChirho.crowdChirho} crowd is confused. They don''t understand ''Greek''!`;
                }
            }
        }
    </script>
</body>
</html>
EOF
    echo "✅ Created ''Day of Pentecost'' game for session 2."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week12-session2-chirho.sh',
  122,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 12 Session 3 (payload-week12-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'dElIj8GFdJyy6aDl9cpZY',
  'Week 12 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 12, Session 3',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 12, Session 3
# This script creates the "Broken Cistern" debugging challenge.

# --- Output initial messages ---
echo "Payload for Week 12 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-12-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$SESSION_DIR_CHIRHO/program-chirho.js"
# Note: TARGET_SQL_FILE_CHIRHO has been removed.

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# --- 1. Create the HTML file (with the updated hint) ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Debugging Challenge</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Debugging Challenge: The Broken Cistern 💧</h1>
        <p>Hallelujah! Today, we have a challenge. The program in this folder is broken. It''s supposed to pull a random verse from a database, but it keeps failing.</p>
        <p class="verse-chirho">"for my people have committed two evils; they have forsaken me the fountain of living waters, and hewed them out cisterns, broken cisterns, that can hold no water." - Jeremiah 2:13</p>
        <p>Our program is trying to draw water from a "broken cistern." Your mission is to <strong>read the code, find the bug, and fix it</strong> so it can draw from the true fountain!</p>
        <h2>How to Run the Program</h2>
        <h4>Step 1: Navigate to the correct directory</h4>
        <pre><code>cd Downloads/cp-chirho/week-12-chirho/session-3-chirho</code></pre>
        <h4>Step 2: Run the program and see the error</h4>
        <pre><code>bun run program-chirho.js</code></pre>
        <h4>Step 3: Fix the code!</h4>
        <p>Open <code>program-chirho.js</code> in your editor. Read the code carefully. The <code>CREATE TABLE</code> command is your first clue. The error is your second. Find the line that''s trying to select from the wrong table and fix it!</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the JS console program (with embedded seed data) ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";

const dbChirho = new Database("verse-of-the-day-chirho.sqlite");

// --- CLUE #1: The Database Schema ---
// We create the table named ''verses_chirho''.
function setupDatabaseChirho() {
    dbChirho.run(`
      CREATE TABLE IF NOT EXISTS verses_chirho (
        id_chirho INTEGER PRIMARY KEY,
        citation_chirho TEXT,
        text_chirho TEXT
      );
    `);

    const verseCountChirho = dbChirho.query("SELECT COUNT(*) as count FROM verses_chirho;").get().count;
    if (verseCountChirho === 0) {
        console.log("Database is empty. Seeding with initial verses...");
        try {
            // Seed data is now embedded directly in the program
            dbChirho.exec(`
                INSERT INTO verses_chirho (citation_chirho, text_chirho) VALUES
                (''Proverbs 3:5'', ''Trust in the LORD with all thine heart; and lean not unto thine own understanding.''),
                (''Philippians 4:13'', ''I can do all things through Christ which strengtheneth me.''),
                (''Psalm 46:1'', ''God is our refuge and strength, a very present help in trouble.''),
                (''1 Peter 5:7'', ''Casting all your care upon him; for he careth for you.'');
            `);
            console.log("Database seeded successfully. Hallelujah!");
        } catch (errorChirho) { console.error("Error seeding database:", errorChirho); }
    }
}

// --- The Main Program Function ---
function getVerseOfTheDayChirho() {
    console.log("\nFetching a verse from the fountain of living waters...");

    let verseChirho = null;

    try {
        // --- !!! THE BUG IS HERE !!! ---
        // This query is trying to select from a table that doesn''t exist.
        // It''s a "broken cistern" that can hold no water!
        //
        // HINT: What was the table name we created up above?
        verseChirho = dbChirho.query("SELECT * FROM proverbs_chirho ORDER BY RANDOM() LIMIT 1;").get();
        // ---------------------------------

        if (verseChirho) {
            console.log(`\n"${verseChirho.text_chirho}"`);
            console.log(`- ${verseChirho.citation_chirho}`);
        } else {
            console.log("\nNo verse was found. Is the cistern broken?");
        }
    } catch (errorChirho) {
        console.error("\nAn error occurred! Read the error message carefully, it''s a clue!");
        console.error(errorChirho.message);
    }
}

// --- Main Program Loop ---
function mainChirho() {
    setupDatabaseChirho(); // This is no longer async
    console.log("\nHallelujah! Welcome to the Verse of the Day app.");

    let isRunningChirho = true;
    while (isRunningChirho) {
        console.log("\n1. Get Verse of the Day");
        console.log("2. Exit");
        const choiceChirho = prompt("> Choose an option (1-2): ");

        switch (choiceChirho) {
            case ''1'':
                getVerseOfTheDayChirho();
                break;
            case ''2'':
                isRunningChirho = false;
                break;
            default:
                console.log("Invalid option.");
        }
    }

    console.log("\nMay the Word of God be a lamp unto your feet. God bless!");
    dbChirho.close();
}

mainChirho();
EOF
    echo "✅ Created console program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week12-session3-chirho.sh',
  123,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 13 Session 1 (payload-week13-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'kgOmxcPDAvoi44eik-s7M',
  'Week 13 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 13, Session 1b',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 13, Session 1b
# This script creates the "Ducky Mafia" database investigation challenge.

# --- Output initial messages ---
echo "Payload for Week 13 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-13-chirho/session-1-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$SESSION_DIR_CHIRHO/server-chirho.js"
TARGET_DB_FILE_CHIRHO="$SESSION_DIR_CHIRHO/messages-chirho.sqlite"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 1b: "The Ducky Mafia" Investigation ==============================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - A New Challenge</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        .mission-brief { background-color: #fffbeb; border: 2px solid #fde047; padding: 15px; border-radius: 8px; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Challenge: The Ducky Mafia 🕵️</h1>
        <p>Hallelujah! Today, you are the **Christian Duck FBI**. A terrible crime has occurred in the Quackers family! We have a lead on a "Ducky Mafia" message board, but the evidence is hidden.</p>
        <p class="verse-chirho">"Have no fellowship with the unfruitful works of darkness, but rather reprove them. For it is a shame even to speak of those things which are done of them in secret." - Ephesians 5:11-12</p>
        <p>Your mission is to find the password of the mafia boss, <strong>"Don_Quackote"</strong>, and log in to his account to find the hidden message that will clear the Quackers'' name.</p>

        <div class="mission-brief">
            <strong>MISSION BRIEF:</strong>
            <p>The server''s code runs. The bug is not in the code, but in the **database**! The developers foolishly stored the passwords in cleartext.</p>
            <p>You must find the <code>messages-chirho.sqlite</code> file (it will be created when you run this payload), open it with a database tool, find the Don''s password, and then use it to log in on the website.</p>
        </div>

        <h2>How to Run the Server</h2>
        <pre><code>cd Downloads/cp-chirho/week-13-chirho/session-1b-chirho</code></pre>
        <pre><code>bun run server-chirho.js</code></pre>
        <p>Then, open your browser and go to: <a href="http://localhost:8000" target="_blank">http://localhost:8000</a></p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create and Seed the SQLite Database File ---
if [[ ! -f "$TARGET_DB_FILE_CHIRHO" ]]; then
    echo "Creating and seeding the messages-chirho.sqlite database..."
    # We will use bun sqlite directly from the shell to create and seed the DB.
    sqlite3 "$TARGET_DB_FILE_CHIRHO" <<''SQL_EOF''
CREATE TABLE IF NOT EXISTS users_chirho (
    id_chirho INTEGER PRIMARY KEY,
    username_chirho TEXT NOT NULL UNIQUE,
    password_chirho TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS messages_chirho (
    id_chirho INTEGER PRIMARY KEY,
    user_id_chirho INTEGER,
    message_base64_chirho TEXT,
    FOREIGN KEY (user_id_chirho) REFERENCES users_chirho(id_chirho)
);
-- Users (Passwords are in cleartext!)
INSERT INTO users_chirho (id_chirho, username_chirho, password_chirho) VALUES
(1, ''Agent_Puddles'', ''feathers123''),
(2, ''Sgt_Bill'', ''quackattack''),
(3, ''Don_Quackote'', ''duckymafia'');

-- Messages (Base64 encoded SVGs)
-- User 1: Agent_Puddles
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(1, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPkp1c3QgY2hlY2tpbmcgaW4uPC90ZXh0Pjwvc3ZnPg==''),
(1, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPk1lZXRpbmcgYXQgdGhlIHBvbmQuPC90ZXh0Pjwvc3ZnPg=='');

-- User 2: Sgt_Bill
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(2, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPlNndC4gQmlsbCBoZXJlLjwvdGV4dD48L3N2Zz4=''),
(2, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPlRoZSBwbGFuIGlzIHdvcmtpbmc8L3RleHQ+PC9zdmc+'');

-- User 3: Don_Quackote (The Mafia Boss)
-- SECRET 1: The Vindication
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0MDAiIGhlaWdodD0iMTAwIj48cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSIjZmVjYmNhIi8+PHRleHQgeD0iNTAlIiB5PSI1MCUiIGRvbWluYW50LWJhc2VsaW5lPSJtaWRkbGUiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9uLXNpemU9IjIwIiBmaWxsPSJCMjA3MDciIGZvbnQtd2VpZ2h0PSJib2xkIj5UaGUgUXVhY2tlcnMgZmFtaWx5IGhhcyBiZWVuIHZpbmRpY2F0ZWQhPC90ZXh0Pjwvc3ZnPg=='');
-- SECRET 2: On to us
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZWVlZGUiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPk9oIG5vIEkgdGhpbmsgdGhleSdyZSBvbiB0byB1cyE8L3RleHQ+PC9zdmc+'');
-- SECRET 3: New server
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZWVlZGUiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPmxldCdzIGdvIHRvIGFub3RoZXIgbW9yZSBzZWN1cmUgc2VydmVyPC90ZXh0Pjwvc3ZnPg=='');
SQL_EOF
    echo "✅ Created and seeded database: $TARGET_DB_FILE_CHIRHO"
fi

# --- 3. Create the "Insecure" Server file (No seeding logic) ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";

// --- Database Setup ---
// We just open the database file. We assume the payload script already created it.
const dbChirho = new Database("messages-chirho.sqlite");

// --- HTML Generation Functions ---
function generateLoginPageChirho(errorMessageChirho = "") {
    const errorHtmlChirho = errorMessageChirho ? `<p class="error-chirho">${errorMessageChirho}</p>` : "";
    return `
    <!DOCTYPE html><html lang="en"><head><title>Ducky Message Board</title>
    <style>
        body{font-family:system-ui;display:flex;justify-content:center;align-items:center;height:100vh;background:#2d3748;color:white;}
        form{background:#4a5568;padding:40px;border-radius:10px;box-shadow:0 5px 15px rgba(0,0,0,0.4);}
        input{display:block;margin-bottom:10px;font-size:16px;padding:8px;}
        button{font-size:16px;padding:10px 15px;background:#f6e05e;color:#2d3748;border:none;border-radius:5px;cursor:pointer;}
        .error-chirho{color:#feb2b2;background:#9b2c2c;padding:10px;border-radius:5px;}
    </style></head>
    <body><form method="POST" action="/login-chirho">
        <h2>Ducky Mafia Login 🦆</h2>
        ${errorHtmlChirho}
        <label>Username:</label><input type="text" name="usernameChirho" required>
        <label>Password:</label><input type="password" name="passwordChirho" required>
        <button type="submit">Login</button>
    </form></body></html>`;
}

function generateDashboardChirho(usernameChirho, messagesChirho) {
    let messagesHtmlChirho = messagesChirho.map(msgParameterChirho =>
        `<div class="msg-chirho"><img src="data:image/svg+xml;base64,${msgParameterChirho.message_base64_chirho}" alt="Secret Message"></div>`
    ).join('''');

    let specialNoteChirho = "";
    if (usernameChirho === "Don_Quackote") {
        specialNoteChirho = `
        <div class="note-chirho">
            <h3>Hallelujah! You found the evidence!</h3>
            <p>You see why storing passwords in plain text is a terrible idea. It''s like leaving the key to your house under the doormat!</p>
            <p>In our next lessons, we will learn how to improve this using <strong>hashing</strong> to make our applications secure, faithful, and wise.</p>
        </div>`;
    }

    return `
    <!DOCTYPE html><html lang="en"><head><title>Message Board</title>
    <style>
        body{font-family:system-ui;background:#2d3748;color:white;padding:20px;}
        h1{color:#f6e05e;}
        .msg-chirho{border:2px solid #f6e05e;margin-top:20px;padding:10px;background:#4a5568;border-radius:8px;}
        .note-chirho{background:#c05621;padding:15px;border-radius:8px;margin-top:30px;}
    </style></head>
    <body>
        <h1>Welcome, ${usernameChirho}</h1>
        <p>Your secret messages:</p>
        ${messagesHtmlChirho}
        ${specialNoteChirho}
        <br><a href="/">Logout</a>
    </body></html>`;
}

// --- Request Handlers ---
async function handleGetChirho(requestChirho) {
    console.log(`ACTION: Serving login page (GET)`);
    return new Response(generateLoginPageChirho(), { headers: { "Content-Type": "text/html" } });
}

async function handlePostLoginChirho(requestChirho) {
    const formDataChirho = await requestChirho.formData();
    const usernameChirho = formDataChirho.get("usernameChirho")?.toString() || "";
    const passwordChirho = formDataChirho.get("passwordChirho")?.toString() || "";

    console.log(`ACTION: Login attempt for user: ${usernameChirho}`);

    // THIS IS THE VULNERABILITY! We are checking cleartext passwords.
    const userChirho = dbChirho.query("SELECT * FROM users_chirho WHERE username_chirho = ? AND password_chirho = ?;")
                       .get(usernameChirho, passwordChirho);

    if (userChirho) {
        console.log(`SUCCESS: Login for ${usernameChirho}`);
        const messagesChirho = dbChirho.query("SELECT * FROM messages_chirho WHERE user_id_chirho = ?;").all(userChirho.id_chirho);
        const headersChirho = {
            ''Content-Type'': ''text/html'',
            ''Set-Cookie'': `authChirho=${userChirho.id_chirho}; Path=/`
        };
        return new Response(generateDashboardChirho(userChirho.username_chirho, messagesChirho), { headers: headersChirho });
    } else {
        console.log(`FAILURE: Failed login for ${usernameChirho}`);
        return new Response(generateLoginPageChirho("Invalid username or password!"), { headers: { "Content-Type": "text/html" } });
    }
}

async function handleDashboardChirho(requestChirho) {
    const cookieHeaderChirho = requestChirho.headers.get("cookie") || "";
    const cookiesChirho = Object.fromEntries(cookieHeaderChirho.split('';'').map(cookieStringChirho => cookieStringChirho.trim().split(''='')));

    if (cookiesChirho.authChirho) {
        const userIdChirho = cookiesChirho.authChirho;
        const userChirho = dbChirho.query("SELECT * FROM users_chirho WHERE id_chirho = ?;").get(userIdChirho);

        if (userChirho) {
            console.log(`ACTION: Serving dashboard for ${userChirho.username_chirho}`);
            const messagesChirho = dbChirho.query("SELECT * FROM messages_chirho WHERE user_id_chirho = ?;").all(userChirho.id_chirho);
            return new Response(generateDashboardChirho(userChirho.username_chirho, messagesChirho), { headers: { "Content-Type": "text/html" } });
        }
    }
    return new Response(null, { status: 302, headers: { "Location": "/" } });
}

// --- Main Server ---
async function mainChirho() {
    // No seeding function needed here, we assume the payload created the DB.
    const serverChirho = Bun.serve({
        port: 8000,
        hostname: "0.0.0.0",

        async fetch(requestChirho) {
            const urlChirho = new URL(requestChirho.url);
            if (urlChirho.pathname === "/") {
                return await handleGetChirho(requestChirho);
            }
            if (urlChirho.pathname === "/login-chirho") {
                return await handlePostLoginChirho(requestChirho);
            }
            if (urlChirho.pathname === "/dashboard-chirho") {
                return await handleDashboardChirho(requestChirho);
            }
            return new Response("Not Found", { status: 404 });
        },
        error(errorChirho) {
            console.error(errorChirho);
            return new Response("An error occurred.", { status: 500 });
        }
    });

    console.log(`Hallelujah! The Ducky message server is running at http://localhost:${serverChirho.port}`);
}

mainChirho();
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week13-session1-chirho.sh',
  131,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 13 Session 2 (payload-week13-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'dQRe2Dn4JLw2RRNcafEe4',
  'Week 13 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 13, Session 2',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 13, Session 2
# This script creates the "Ducky Mafia" MD5 password cracking challenge.

# --- Output initial messages ---
echo "Payload for Week 13 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-13-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_JS_FILE_CHIRHO="$SESSION_DIR_CHIRHO/server-chirho.js"
TARGET_DB_FILE_CHIRHO="$SESSION_DIR_CHIRHO/messages-chirho.sqlite"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 2: "The Ducky Mafia" Investigation Pt. 2 =========================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - A New Challenge</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        .mission-brief { background-color: #fffbeb; border: 2px solid #fde047; padding: 15px; border-radius: 8px; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Challenge: The "Securer" Board 🕵️</h1>
        <p>Hallelujah! Our investigation continues. The Ducky Mafia has moved to a new server, "The Securer Board," which they claim is "now hashed with MD5!"</p>
        <p class="verse-chirho">"As a dog returneth to his vomit, so a fool returneth to his folly." - Proverbs 26:11</p>
        <p>The Don is a fool returning to his folly. He thinks hashing his password makes him safe, but he''s still using a simple password. Our mission is to prove that simple MD5 is not enough!</p>

        <div class="mission-brief">
            <strong>MISSION BRIEF:</strong>
            <p>The server is running correctly, but the Don is still using a weak password. This time, the <code>messages-chirho.sqlite</code> file contains a "hash" of the password, not the password itself.</p>
            <p>Your job is to open the database file, find the MD5 hash for <strong>"Don_Quackote"</strong>, and use an online "MD5 reverse lookup" tool (like <a href="https://md5.gromweb.com" target="_blank">https://md5.gromweb.com</a>) to crack it. This has a reverse dictionary of MD5 hashes for common words, that if you give it an MD5 for one of the words it knows, it can give you the word. However if you try something random it will not have it. Once you have the original password, log in to find the new evidence!</p>
        </div>

        <h2>How to Run the Server</h2>
        <pre><code>cd Downloads/cp-chirho/week-13-chirho/session-2-chirho</code></pre>
        <pre><code>bun run server-chirho.js</code></pre>
        <p>Then, open your browser and go to: <a href="http://localhost:8000" target="_blank">http://localhost:8000</a></p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create and Seed the SQLite Database File ---
if [[ ! -f "$TARGET_DB_FILE_CHIRHO" ]]; then
    echo "Creating and seeding the messages-chirho.sqlite database..."
    # MD5 hashes:
    # ''123456'' -> e10adc3949ba59abbe56e057f20f883e
    # ''feathers'' -> 38e79c21fd77f1e13ca31ab8e22db989
    # ''quack'' -> cfaf278e8f522c72644cee2a753d2845
    sqlite3 "$TARGET_DB_FILE_CHIRHO" <<''SQL_EOF''
CREATE TABLE IF NOT EXISTS users_chirho (
    id_chirho INTEGER PRIMARY KEY,
    username_chirho TEXT NOT NULL UNIQUE,
    password_hash_chirho TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS messages_chirho (
    id_chirho INTEGER PRIMARY KEY,
    user_id_chirho INTEGER,
    message_base64_chirho TEXT,
    FOREIGN KEY (user_id_chirho) REFERENCES users_chirho(id_chirho)
);
INSERT INTO users_chirho (id_chirho, username_chirho, password_hash_chirho) VALUES
(1, ''Agent_Puddles'', ''cfaf278e8f522c72644cee2a753d2845''),
(2, ''Sgt_Bill'', ''38e79c21fd77f1e13ca31ab8e22db989''),
(3, ''Don_Quackote'', ''e10adc3949ba59abbe56e057f20f883e'');

-- User 1: Agent_Puddles
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(1, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPkhlYWRpbmcgdG8gcG9uZC48L3RleHQ+PC9zdmc+'');

-- User 2: Sgt_Bill
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(2, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPk9wZXJhdGlvbiBGaXNoIEZvb2QgaXMgYSBnbzwvdGV4dD48L3N2Zz4='');

-- User 3: Don_Quackote (The Mafia Boss)
-- SECRET 1: The Vindication
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0MDAiIGhlaWdodD0iMTAwIj48cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSIjZmVjYmNhIi8+PHRleHQgeD0iNTAlIiB5PSI1MCUiIGRvbWluYW50LWJhc2VsaW5lPSJtaWRkbGUiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJBcmlhbCIgZm9uLXNpemU9IjIwIiBmaWxsPSJCMjA3MDciIGZvbnQtd2VpZ2h0PSJib2xkIj5UaGUgUXVhY2tlcnMgZmFtaWx5IGhhcyBiZWVuIHZpbmRpY2F0ZWQhPC90ZXh0Pjwvc3ZnPg=='');
-- SECRET 2: The New Incriminating Message (Part 1)
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZmVlZWQiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPm5vIG9uZSB3aWxsIHN1c3BlY3QgaXRzIGFjdHVhbGx5IG9uZSBvZiB0aGUgUXVhY2tlcnMuLi48L3RleHQ+PC9zdmc+'');
-- SECRET 3: The New Incriminating Message (Part 2)
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZmVlZWQiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPi4uLnRoYXQgcHV0IHVzIHVwIHRvIHRoaXMsIGFsbCBmb3IgdGhlIGluaGVyaXRhbmNlITwvdGV4dD48L3N2Zz4='');
-- SECRET 4: The New Server
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZWVlZGUiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPmxldCdzIGdvIHRvIHRoZSBzZWN1cmVyLWVyLWVyIG1lc3NhZ2UgYm9hcmQ8L3RleHQ+PC9zdmc+'');
SQL_EOF
    echo "✅ Created and seeded database: $TARGET_DB_FILE_CHIRHO"
fi

# --- 3. Create the "Securer" Server file (Corrected) ---
if [[ ! -f "$TARGET_JS_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";

const dbChirho = new Database("messages-chirho.sqlite");

// --- HTML Generation Functions ---
function generateLoginPageChirho(errorMessageChirho = "") {
    const errorHtmlChirho = errorMessageChirho ? `<p class="error-chirho">${errorMessageChirho}</p>` : "";
    return `
    <!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>The Securer Board</title>
    <style>
        body{font-family:system-ui;display:flex;justify-content:center;align-items:center;height:100vh;background:#0a2a0a;color:white;}
        form{background:#003a00;padding:40px;border-radius:10px;box-shadow:0 5px 15px rgba(0,0,0,0.4);}
        input{display:block;margin-bottom:10px;font-size:16px;padding:8px;}
        button{font-size:16px;padding:10px 15px;background:#00ff00;color:#003a00;border:none;border-radius:5px;cursor:pointer;font-weight:bold;}
        .error-chirho{color:#ffb2b2;background:#9b2c2c;padding:10px;border-radius:5px;}
        h2{border-bottom: 2px solid #00ff00; padding-bottom: 5px;}
    </style></head>
    <body><form method="POST" action="/login-chirho">
        <h2>The Securer Board &#129414;</h2>
        <p>Now with MD5 Hashing!</p>
        ${errorHtmlChirho}
        <label>Username:</label><input type="text" name="usernameChirho" required>
        <label>Password:</label><input type="password" name="passwordChirho" required>
        <button type="submit">Login</button>
    </form></body></html>`;
}

function generateDashboardChirho(usernameChirho, messagesChirho) {
    let messagesHtmlChirho = messagesChirho.map(msgParameterChirho =>
        `<div class="msg-chirho"><img src="data:image/svg+xml;base64,${msgParameterChirho.message_base64_chirho}" alt="Secret Message"></div>`
    ).join('''');

    let specialNoteChirho = "";
    if (usernameChirho === "Don_Quackote") {
        specialNoteChirho = `
        <div class="note-chirho">
            <h3>Hallelujah! You found the evidence!</h3>
            <p>You see that even a "hashed" password is not safe if the password itself is weak! The Don is a fool returning to his folly.</p>
            <p>In our next lessons, we will learn how to improve this using <strong>salting</strong> to make our passwords more secure.</p>
        </div>`;
    }

    return `
    <!DOCTYPE html><html lang="en"><head><title>Message Board</title>
    <style>
        body{font-family:system-ui;background:#0a2a0a;color:white;padding:20px;}
        h1{color:#00ff00;}
        .msg-chirho{border:2px solid #00ff00;margin-top:20px;padding:10px;background:#003a00;border-radius:8px;}
        .note-chirho{background:#c05621;padding:15px;border-radius:8px;margin-top:30px;}
    </style></head>
    <body>
        <h1>Welcome, ${usernameChirho}</h1>
        <p>Your secret messages:</p>
        ${messagesHtmlChirho}
        ${specialNoteChirho}
        <br><a href="/">Logout</a>
    </body></html>`;
}

// --- Request Handlers ---
async function handleGetChirho(requestChirho) {
    console.log(`ACTION: Serving login page (GET)`);
    return new Response(generateLoginPageChirho(), { headers: { "Content-Type": "text/html; charset=utf-8" } });
}

async function handlePostLoginChirho(requestChirho) {
    const formDataChirho = await requestChirho.formData();
    const usernameChirho = formDataChirho.get("usernameChirho")?.toString() || "";
    const passwordChirho = formDataChirho.get("passwordChirho")?.toString() || "";

    console.log(`ACTION: Login attempt for user: ${usernameChirho}`);

    // Hash the password the user typed in using the correct Bun API.
    const passwordHashChirho = new Bun.CryptoHasher("md5").update(passwordChirho).digest("hex");

    const userChirho = dbChirho.query("SELECT * FROM users_chirho WHERE username_chirho = ? AND password_hash_chirho = ?;")
                       .get(usernameChirho, passwordHashChirho);

    if (userChirho) {
        console.log(`SUCCESS: Login for ${usernameChirho}`);
        const messagesChirho = dbChirho.query("SELECT * FROM messages_chirho WHERE user_id_chirho = ?;").all(userChirho.id_chirho);
        const headersChirho = {
            ''Content-Type'': ''text/html; charset=utf-8'',
            ''Set-Cookie'': `authChirho=${userChirho.id_chirho}; Path=/`
        };
        return new Response(generateDashboardChirho(userChirho.username_chirho, messagesChirho), { headers: headersChirho });
    } else {
        console.log(`FAILURE: Failed login for ${usernameChirho}`);
        return new Response(generateLoginPageChirho("Invalid username or password!"), { headers: { "Content-Type": "text/html; charset=utf-8" } });
    }
}

async function handleDashboardChirho(requestChirho) {
    const cookieHeaderChirho = requestChirho.headers.get("cookie") || "";
    const cookiesChirho = Object.fromEntries(cookieHeaderChirho.split('';'').map(cookieStringChirho => cookieStringChirho.trim().split(''='')));

    if (cookiesChirho.authChirho) {
        const userIdChirho = cookiesChirho.authChirho;
        const userChirho = dbChirho.query("SELECT * FROM users_chirho WHERE id_chirho = ?;").get(userIdChirho);

        if (userChirho) {
            console.log(`ACTION: Serving dashboard for ${userChirho.username_chirho}`);
            const messagesChirho = dbChirho.query("SELECT * FROM messages_chirho WHERE user_id_chirho = ?;").all(userChirho.id_chirho);
            return new Response(generateDashboardChirho(userChirho.username_chirho, messagesChirho), { headers: { "Content-Type": "text/html; charset=utf-8" } });
        }
    }
    return new Response(null, { status: 302, headers: { "Location": "/" } });
}

// --- Main Server ---
async function mainChirho() {
    const serverChirho = Bun.serve({
        port: 8000,
        hostname: "0.0.0.0",

        async fetch(requestChirho) {
            const urlChirho = new URL(requestChirho.url);
            if (urlChirho.pathname === "/") {
                return await handleGetChirho(requestChirho);
            }
            if (urlChirho.pathname === "/login-chirho") {
                return await handlePostLoginChirho(requestChirho);
            }
            if (urlChirho.pathname === "/dashboard-chirho") {
                return await handleDashboardChirho(requestChirho);
            }
            return new Response("Not Found", { status: 404 });
        },
        error(errorChirho) {
            console.error(errorChirho);
            return new Response("An error occurred.", { status: 500 });
        }
    });

    console.log(`Hallelujah! The "Securer" Ducky Mafia server is running at http://localhost:${serverChirho.port}`);
}

mainChirho();
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week13-session2-chirho.sh',
  132,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 13 Session 3 (payload-week13-session3a-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'd61TK1_2cCO17PlVQNNBL',
  'Week 13 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 13, Session 3',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 13, Session 3
# This script creates the "Ducky Mafia" salted-MD5 password cracking challenge.

# --- Output initial messages ---
echo "Payload for Week 13 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-13-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_JS_SERVER_FILE_CHIRHO="$SESSION_DIR_CHIRHO/server-chirho.js"
TARGET_JS_BRUTEFORCE_FILE_CHIRHO="$SESSION_DIR_CHIRHO/brute-force-chirho.js"
TARGET_DB_FILE_CHIRHO="$SESSION_DIR_CHIRHO/messages-chirho.sqlite"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 3: "The Ducky Mafia" Investigation Pt. 3 =========================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - The Final Challenge</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        .mission-brief { background-color: #fffbeb; border: 2px solid #fde047; padding: 15px; border-radius: 8px; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Challenge: The "Securer-er-er" Board 🕵️</h1>
        <p>Hallelujah! The Ducky Mafia is getting desperate. They''ve moved to a new "Securer-er-er" server. This time, they''ve heard about "salting" their passwords.</p>
        <p class="verse-chirho">"But they, measuring themselves by themselves, and comparing themselves among themselves, are not wise." - 2 Corinthians 10:12</p>
        <p>They are wise in their own eyes, but their folly will be exposed. A salt is useless if the password is still weak! We will now break their security with a "brute force" attack to reveal the truth.</p>

        <div class="mission-brief">
            <strong>MISSION BRIEF:</strong>
            <p>The server''s database, <code>messages-chirho.sqlite</code>, now has two security columns: <code>password_hash_chirho</code> and <code>salt_chirho</code>. A reverse-lookup site is now useless because of the salt!</p>
            <p>Your mission is to:</p>
            <ol>
                <li>Open the database file and find the <strong>hash</strong> and <strong>salt</strong> for "Don_Quackote".</li>
                <li>Run our new tool, <code>brute-force-chirho.js</code>, to crack the password.</li>
                <li>When prompted, paste in the <strong>hash</strong> and <strong>salt</strong> you found.</li>
                <li>The script will try every combination until it finds the password. Once you have it, log in on the website to find the final, incriminating messages!</li>
            </ol>
        </div>

        <h2>How to Run the Mission</h2>
        <pre><code>cd Downloads/cp-chirho/week-13-chirho/session-3-chirho</code></pre>
        <p>In your <strong>first terminal</strong>, run the server:</p>
        <pre><code>bun run server-chirho.js</code></pre>
        <p>In a <strong>new, second terminal</strong>, run the cracking tool:</p>
        <pre><code>bun run brute-force-chirho.js</code></pre>
        <p>After the tool finds the password, go to <a href="http://localhost:8000" target="_blank">http://localhost:8000</a> and log in!</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create and Seed the SQLite Database File ---
if [[ ! -f "$TARGET_DB_FILE_CHIRHO" ]]; then
    echo "Creating and seeding the messages-chirho.sqlite database..."
    # We will use sqlite3 to create and seed the DB.
    # Salts are plain text. Hashes are md5(salt + password).
    # ''quack'' + ''salt1'' -> md5(''salt1quack'') -> f195d8f1618765451f15e8c37c2f0f74
    # ''feathers'' + ''salt2'' -> md5(''salt2feathers'') -> 1951564757134440f6f551b942ac3e39
    # ''mob7'' + ''donnysalt'' -> md5(''donnysaltmob7'') -> 9a410b0b8c668b5e69e8b159f809f8d9
    sqlite3 "$TARGET_DB_FILE_CHIRHO" <<''SQL_EOF''
CREATE TABLE IF NOT EXISTS users_chirho (
    id_chirho INTEGER PRIMARY KEY,
    username_chirho TEXT NOT NULL UNIQUE,
    password_hash_chirho TEXT NOT NULL,
    salt_chirho TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS messages_chirho (
    id_chirho INTEGER PRIMARY KEY,
    user_id_chirho INTEGER,
    message_base64_chirho TEXT,
    FOREIGN KEY (user_id_chirho) REFERENCES users_chirho(id_chirho)
);
-- Users (Passwords are now SALTED MD5 hashes!)
INSERT INTO users_chirho (id_chirho, username_chirho, password_hash_chirho, salt_chirho) VALUES
(1, ''Agent_Puddles'', ''f195d8f1618765451f15e8c37c2f0f74'', ''salt1''),
(2, ''Sgt_Bill'', ''1951564757134440f6f551b942ac3e39'', ''salt2''),
(3, ''Don_Quackote'', ''9a410b0b8c668b5e69e8b159f809f8d9'', ''donnysalt'');

-- Messages (Base64 encoded SVGs)
-- User 1: Agent_Puddles
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(1, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPkhlYWRpbmcgdG8gcG9uZC48L3RleHQ+PC9zdmc+'');
-- User 2: Sgt_Bill
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(2, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPk9wZXJhdGlvbiBGaXNoIEZvb2QgaXMgYSBnbzwvdGV4dD48L3N2Zz4='');
-- User 3: Don_Quackote (The Mafia Boss)
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZmVlZWQiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPk9rYXkgQ3JhY2tlcnMgUXVhY2tlcnMgbWFkZSB0aGUgZGVwb3NpdC4uLjwvdGV4dD48L3N2Zz4='');
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZmVlZWQiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPk9oIG5vLCBJIHRoaW5rIHRoZSBEdWNreSBGQkkgaXMgaG90IG9uIG91ciB0cmFpbCEgQnV0IGhvdyBhcmUgdGhleSBmaWd1cmluZyB0aGlzIG91dD8hPC90ZXh0Pjwvc3ZnPg=='');
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZWVlZGUiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPmxldCdzIGdvIHRvIHRoZSBzZWN1cmVyLWVyLWVyIG1lc3NhZ2UgYm9hcmQ8L3RleHQ+PC9zdmc+'');
SQL_EOF
    echo "✅ Created and seeded database: $TARGET_DB_FILE_CHIRHO"
fi

# --- 3. Create the "Securer-er-er" Server file ---
if [[ ! -f "$TARGET_JS_SERVER_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_SERVER_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";

const dbChirho = new Database("messages-chirho.sqlite");

// --- HTML Generation Functions ---
function generateLoginPageChirho(errorMessageChirho = "") {
    const errorHtmlChirho = errorMessageChirho ? `<p class="error-chirho">${errorMessageChirho}</p>` : "";
    return `
    <!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>The Securer-er-er Board</title>
    <style>
        body{font-family:system-ui;display:flex;justify-content:center;align-items:center;height:100vh;background:#4a044e;color:white;}
        form{background:#701a75;padding:40px;border-radius:10px;box-shadow:0 5px 15px rgba(0,0,0,0.4);}
        input{display:block;margin-bottom:10px;font-size:16px;padding:8px;}
        button{font-size:16px;padding:10px 15px;background:#fcd34d;color:#4a044e;border:none;border-radius:5px;cursor:pointer;font-weight:bold;}
        .error-chirho{color:#ffb2b2;background:#9b2c2c;padding:10px;border-radius:5px;}
        h2{border-bottom: 2px solid #fcd34d; padding-bottom: 5px;}
    </style></head>
    <body><form method="POST" action="/login-chirho">
        <h2>Securer-er-er Board &#129414;</h2>
        <p>Now with SALTED MD5!</p>
        ${errorHtmlChirho}
        <label>Username:</label><input type="text" name="usernameChirho" required>
        <label>Password:</label><input type="password" name="passwordChirho" required>
        <button type="submit">Login</button>
    </form></body></html>`;
}

function generateDashboardChirho(usernameChirho, messagesChirho) {
    let messagesHtmlChirho = messagesChirho.map(msgParameterChirho =>
        `<div class="msg-chirho"><img src="data:image/svg+xml;base64,${msgParameterChirho.message_base64_chirho}" alt="Secret Message"></div>`
    ).join('''');

    let specialNoteChirho = "";
    if (usernameChirho === "Don_Quackote") {
        specialNoteChirho = `
        <div class="note-chirho">
            <h3>Hallelujah! You cracked the salted hash!</h3>
            <p>You see that even a salt can''t protect a weak, simple password like ''mob7'' from a brute-force attack.</p>
            <p>To be truly secure, we need modern algorithms like <strong>BCrypt</strong> or <strong>Argon2</strong> which are very slow on purpose, making brute-force attacks take thousands of years. We also need <strong>long, uncommon passwords</strong> (not in a dictionary) and <strong>Two-Factor Authentication (2FA)</strong>.</p>
        </div>`;
    }

    return `
    <!DOCTYPE html><html lang="en"><head><title>Message Board</title>
    <style>
        body{font-family:system-ui;background:#4a044e;color:white;padding:20px;}
        h1{color:#fcd34d;}
        .msg-chirho{border:2px solid #fcd34d;margin-top:20px;padding:10px;background:#701a75;border-radius:8px;}
        .note-chirho{background:#c05621;padding:15px;border-radius:8px;margin-top:30px;}
    </style></head>
    <body>
        <h1>Welcome, ${usernameChirho}</h1>
        <p>Your secret messages:</p>
        ${messagesHtmlChirho}
        ${specialNoteChirho}
        <br><a href="/">Logout</a>
    </body></html>`;
}

// --- Request Handlers ---
async function handleGetChirho(requestChirho) {
    console.log(`ACTION: Serving login page (GET)`);
    return new Response(generateLoginPageChirho(), { headers: { "Content-Type": "text/html; charset=utf-8" } });
}

async function handlePostLoginChirho(requestChirho) {
    const formDataChirho = await requestChirho.formData();
    const usernameChirho = formDataChirho.get("usernameChirho")?.toString() || "";
    const passwordChirho = formDataChirho.get("passwordChirho")?.toString() || "";

    console.log(`ACTION: Login attempt for user: ${usernameChirho}`);

    // --- THIS IS THE NEW SALTED LOGIC ---
    // 1. Get the user from the database *first* by username only.
    const userChirho = dbChirho.query("SELECT * FROM users_chirho WHERE username_chirho = ?;").get(usernameChirho);

    if (!userChirho) {
        console.log(`FAILURE: No user found with name ${usernameChirho}`);
        return new Response(generateLoginPageChirho("Invalid username or password!"), { headers: { "Content-Type": "text/html; charset=utf-8" } });
    }

    // 2. Now, re-create the hash using the user''s *specific salt* from the database.
    const passwordHashChirho = new Bun.CryptoHasher("md5").update(userChirho.salt_chirho + passwordChirho).digest("hex");

    // 3. Compare the hash we just made with the hash stored in the database.
    if (userChirho.password_hash_chirho === passwordHashChirho) {
        console.log(`SUCCESS: Login for ${usernameChirho}`);
        const messagesChirho = dbChirho.query("SELECT * FROM messages_chirho WHERE user_id_chirho = ?;").all(userChirho.id_chirho);
        const headersChirho = {
            ''Content-Type'': ''text/html; charset=utf-8'',
            ''Set-Cookie'': `authChirho=${userChirho.id_chirho}; Path=/`
        };
        return new Response(generateDashboardChirho(userChirho.username_chirho, messagesChirho), { headers: headersChirho });
    } else {
        console.log(`FAILURE: Failed login for ${usernameChirho} (password incorrect)`);
        return new Response(generateLoginPageChirho("Invalid username or password!"), { headers: { "Content-Type": "text/html; charset=utf-8" } });
    }
}

async function handleDashboardChirho(requestChirho) {
    const cookieHeaderChirho = requestChirho.headers.get("cookie") || "";
    const cookiesChirho = Object.fromEntries(cookieHeaderChirho.split('';'').map(cookieStringChirho => cookieStringChirho.trim().split(''='')));

    if (cookiesChirho.authChirho) {
        const userIdChirho = cookiesChirho.authChirho;
        const userChirho = dbChirho.query("SELECT * FROM users_chirho WHERE id_chirho = ?;").get(userIdChirho);

        if (userChirho) {
            console.log(`ACTION: Serving dashboard for ${userChirho.username_chirho}`);
            const messagesChirho = dbChirho.query("SELECT * FROM messages_chirho WHERE user_id_chirho = ?;").all(userChirho.id_chirho);
            return new Response(generateDashboardChirho(userChirho.username_chirho, messagesChirho), { headers: { "Content-Type": "text/html; charset=utf-8" } });
        }
    }
    return new Response(null, { status: 302, headers: { "Location": "/" } });
}

// --- Main Server ---
async function mainChirho() {
    const serverChirho = Bun.serve({
        port: 8000,
        hostname: "0.0.0.0",

        async fetch(requestChirho) {
            const urlChirho = new URL(requestChirho.url);
            if (urlChirho.pathname === "/") {
                return await handleGetChirho(requestChirho);
            }
            if (urlChirho.pathname === "/login-chirho") {
                return await handlePostLoginChirho(requestChirho);
            }
            if (urlChirho.pathname === "/dashboard-chirho") {
                return await handleDashboardChirho(requestChirho);
            }
            return new Response("Not Found", { status: 404 });
        },
        error(errorChirho) {
            console.error(errorChirho);
            return new Response("An error occurred.", { status: 500 });
        }
    });

    console.log(`Hallelujah! The "Securer-er-er" Ducky Mafia server is running at http://localhost:${serverChirho.port}`);
}

mainChirho();
EOF
    echo "✅ Created server program: $TARGET_JS_FILE_CHIRHO"
fi

# --- 4. Create the Brute Force Cracking Tool ---
if [[ ! -f "$TARGET_JS_BRUTEFORCE_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_BRUTEFORCE_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

console.log("--- Ducky Mafia Password Cracker ---");
console.log("This tool will try to find a 1-4 character password (lowercase letters & numbers).\n");

const hashToCrackChirho = prompt("Paste the password hash from the database: ");
const saltChirho = prompt("Paste the salt from the database: ");

if (!hashToCrackChirho || !saltChirho) {
    console.log("You must provide both a hash and a salt. Exiting.");
} else {
    console.log(`\nAttempting to crack hash: ${hashToCrackChirho}\nWith salt: ${saltChirho}\n`);
    crackPasswordChirho(hashToCrackChirho, saltChirho);
}

async function crackPasswordChirho(hashToCrack, salt) {
    const charsetChirho = "abcdefghijklmnopqrstuvwxyz0123456789";
    let attemptsChirho = 0;
    const startTimeChirho = Date.now();


    // This function updates the console line
    function updateStatusChirho(guessChirho) {
        process.stdout.write(`Attempts: ${attemptsChirho} | Trying: ${guessChirho.padEnd(10)}\r`);
    }

    // Helper function to check a guess
    function checkGuessChirho(guessChirho) {
        attemptsChirho++;
        if (attemptsChirho % 1000 === 0) {
            updateStatusChirho(guessChirho);
        }
        const hasherChirho = new Bun.CryptoHasher("md5");

        hasherChirho.update(salt + guessChirho);
        const hashResultChirho = hasherChirho.digest("hex");

        if (hashResultChirho === hashToCrack) {
            const endTimeChirho = Date.now();
            const durationChirho = (endTimeChirho - startTimeChirho) / 1000;
            console.log(`\n\nHallelujah! Password found!`);
            console.log(`Password is: ${guessChirho}`);
            console.log(`Found in ${attemptsChirho} attempts and ${durationChirho} seconds.`);
            return true;
        }
        return false;
    }

    // Try all 1-char passwords
    for (const char1 of charsetChirho) {
        if (checkGuessChirho(char1)) return;
    }
    // Try all 2-char passwords
    for (const char1 of charsetChirho) {
        for (const char2 of charsetChirho) {
            if (checkGuessChirho(char1 + char2)) return;
        }
    }
    // Try all 3-char passwords
    for (const char1 of charsetChirho) {
        for (const char2 of charsetChirho) {
            for (const char3 of charsetChirho) {
                if (checkGuessChirho(char1 + char2 + char3)) return;
            }
        }
    }
    // Try all 4-char passwords
    for (const char1 of charsetChirho) {
        for (const char2 of charsetChirho) {
            for (const char3 of charsetChirho) {
                for (const char4 of charsetChirho) {
                    if (checkGuessChirho(char1 + char2 + char3 + char4)) return;
                }
            }
        }
    }

    console.log("\n\nAttack finished. Password not found (it might be longer than 4 characters or use different characters).");
}
EOF
    echo "✅ Created brute-force tool: $TARGET_JS_BRUTEFORCE_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week13-session3a-chirho.sh',
  133,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 13 Session 3 (payload-week13-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'sDjyebcQvY-7ZRWlmuCAf',
  'Week 13 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 13, Session 3',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 13, Session 3
# This script creates the "Ducky Mafia" salted-MD5 password cracking challenge.

# --- Output initial messages ---
echo "Payload for Week 13 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-13-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_JS_SERVER_FILE_CHIRHO="$SESSION_DIR_CHIRHO/server-chirho.js"
TARGET_JS_BRUTEFORCE_FILE_CHIRHO="$SESSION_DIR_CHIRHO/brute-force-chirho.js"
TARGET_DB_FILE_CHIRHO="$SESSION_DIR_CHIRHO/messages-chirho.sqlite"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 3: "The Ducky Mafia" Investigation Pt. 3 =========================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - The Final Challenge</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        .mission-brief { background-color: #fffbeb; border: 2px solid #fde047; padding: 15px; border-radius: 8px; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Challenge: The "Securer-er-er" Board 🕵️</h1>
        <p>Hallelujah! The Ducky Mafia is getting desperate. They''ve moved to a new "Securer-er-er" server. This time, they''ve heard about "salting" their passwords.</p>
        <p class="verse-chirho">"But they, measuring themselves by themselves, and comparing themselves among themselves, are not wise." - 2 Corinthians 10:12</p>
        <p>They are wise in their own eyes, but their folly will be exposed. A salt is useless if the password is still weak! We will now break their security with a "brute force" attack to reveal the truth.</p>

        <div class="mission-brief">
            <strong>MISSION BRIEF:</strong>
            <p>The server''s database, <code>messages-chirho.sqlite</code>, now has two security columns: <code>password_hash_chirho</code> and <code>salt_chirho</code>. A reverse-lookup site is now useless because of the salt!</p>
            <p>Your mission is to:</p>
            <ol>
                <li>Open the database file and find the <strong>hash</strong> and <strong>salt</strong> for "Don_Quackote".</li>
                <li>Run our new tool, <code>brute-force-chirho.js</code>, to crack the password.</li>
                <li>When prompted, paste in the <strong>hash</strong> and <strong>salt</strong> you found.</li>
                <li>The script will try every combination until it finds the password. Once you have it, log in on the website to find the final, incriminating messages!</li>
            </ol>
        </div>

        <h2>How to Run the Mission</h2>
        <pre><code>cd Downloads/cp-chirho/week-13-chirho/session-3-chirho</code></pre>
        <p>In your <strong>first terminal</strong>, run the server:</p>
        <pre><code>bun run server-chirho.js</code></pre>
        <p>In a <strong>new, second terminal</strong>, run the cracking tool:</p>
        <pre><code>bun run brute-force-chirho.js</code></pre>
        <p>After the tool finds the password, go to <a href="http://localhost:8000" target="_blank">http://localhost:8000</a> and log in!</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create and Seed the SQLite Database File ---
if [[ ! -f "$TARGET_DB_FILE_CHIRHO" ]]; then
    echo "Creating and seeding the messages-chirho.sqlite database..."
    # Salts are plain text. Hashes are md5(salt + password).
    # ''quack'' + ''salt1'' -> md5(''salt1quack'') -> 7963e8cbe657c4ddacceb138c67c6ffb
    # ''grace'' + ''salt2'' -> md5(''salt2grace'') -> 4adf407455354a97349615dfc8ee9823
    # ''mob7'' + ''donnysalt'' -> md5(''donnysaltmob7'') -> 6611df44136a92dc618b00d2c266ec8c
    sqlite3 "$TARGET_DB_FILE_CHIRHO" <<''SQL_EOF''
CREATE TABLE IF NOT EXISTS users_chirho (
    id_chirho INTEGER PRIMARY KEY,
    username_chirho TEXT NOT NULL UNIQUE,
    password_hash_chirho TEXT NOT NULL,
    salt_chirho TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS messages_chirho (
    id_chirho INTEGER PRIMARY KEY,
    user_id_chirho INTEGER,
    message_base64_chirho TEXT,
    FOREIGN KEY (user_id_chirho) REFERENCES users_chirho(id_chirho)
);
-- Users (Passwords are now SALTED MD5 hashes!)
INSERT INTO users_chirho (id_chirho, username_chirho, password_hash_chirho, salt_chirho) VALUES
(1, ''Agent_Puddles'', ''7963e8cbe657c4ddacceb138c67c6ffb'', ''salt1''),
(2, ''Sgt_Bill'', ''4adf407455354a97349615dfc8ee9823'', ''salt2''),
(3, ''Don_Quackote'', ''6611df44136a92dc618b00d2c266ec8c'', ''donnysalt'');

-- Messages (Base64 encoded SVGs)
-- User 1: Agent_Puddles
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(1, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPkhlYWRpbmcgdG8gcG9uZC48L3RleHQ+PC9zdmc+'');
-- User 2: Sgt_Bill
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(2, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNlMGU3ZmYiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiMzMzMiPk9wZXJhdGlvbiBGaXNoIEZvb2QgaXMgYSBnbzwvdGV4dD48L3N2Zz4='');
-- User 3: Don_Quackote (The Mafia Boss)
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZmVlZWQiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPk9rYXkgQ3JhY2tlcnMgUXVhY2tlcnMgbWFkZSB0aGUgZGVwb3NpdC4uLjwvdGV4dD48L3N2Zz4='');
INSERT INTO messages_chirho (user_id_chirho, message_base64_chirho) VALUES
(3, ''PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2MDAiIGhlaWdodD0iNTAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9IiNmZmVlZWQiLz48dGV4dCB4PSI1MCUiIHk9IjUwJSIgZG9taW5hbnQtYmFzZWxpbmU9Im1pZGRsZSIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9uLWZhbWlseT0iQXJpYWwiIGZpbGw9IiNjMDAwMDAiPk9oIG5vLCBJIHRoaW5rIHRoZSBEdWNreSBGQkkgaXMgaG90IG9uIG91ciB0cmFpbCEgQnV0IGhvdyBhcmUgdGhleSBmaWd1cmluZyB0aGlzIG91dD8hPC90ZXh0Pjwvc3ZnPg=='');
SQL_EOF
    echo "✅ Created and seeded database: $TARGET_DB_FILE_CHIRHO"
fi

# --- 3. Create the "Securer-er-er" Server file ---
if [[ ! -f "$TARGET_JS_SERVER_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_SERVER_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

import { Database } from "bun:sqlite";

const dbChirho = new Database("messages-chirho.sqlite");

// --- HTML Generation Functions ---
function generateLoginPageChirho(errorMessageChirho = "") {
    const errorHtmlChirho = errorMessageChirho ? `<p class="error-chirho">${errorMessageChirho}</p>` : "";
    return `
    <!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>The Securer-er-er Board</title>
    <style>
        body{font-family:system-ui;display:flex;justify-content:center;align-items:center;height:100vh;background:#4a044e;color:white;}
        form{background:#701a75;padding:40px;border-radius:10px;box-shadow:0 5px 15px rgba(0,0,0,0.4);}
        input{display:block;margin-bottom:10px;font-size:16px;padding:8px;}
        button{font-size:16px;padding:10px 15px;background:#fcd34d;color:#4a044e;border:none;border-radius:5px;cursor:pointer;font-weight:bold;}
        .error-chirho{color:#ffb2b2;background:#9b2c2c;padding:10px;border-radius:5px;}
        h2{border-bottom: 2px solid #fcd34d; padding-bottom: 5px;}
    </style></head>
    <body><form method="POST" action="/login-chirho">
        <h2>Securer-er-er Board &#129414;</h2>
        <p>Now with SALTED MD5!</p>
        ${errorHtmlChirho}
        <label>Username:</label><input type="text" name="usernameChirho" required>
        <label>Password:</label><input type="password" name="passwordChirho" required>
        <button type="submit">Login</button>
    </form></body></html>`;
}

function generateDashboardChirho(usernameChirho, messagesChirho) {
    let messagesHtmlChirho = messagesChirho.map(msgParameterChirho =>
        `<div class="msg-chirho"><img src="data:image/svg+xml;base64,${msgParameterChirho.message_base64_chirho}" alt="Secret Message"></div>`
    ).join('''');

    let specialNoteChirho = "";
    if (usernameChirho === "Don_Quackote") {
        specialNoteChirho = `
        <div class="note-chirho" style="display: flex; flex-direction: column; align-items: center;">
            <img src="http://cp.lovejes.us/fbi-crackers-quackers-chirho.png" width="100%" height="auto"/>
            <div>
                <h3>Hallelujah! You cracked the salted hash!</h3>
                <p>You see that even a salt can''t protect a weak, simple password from a brute-force attack.</p>
                <p>To be truly secure, we need modern algorithms like <strong>BCrypt</strong> or <strong>Argon2</strong> which are very slow on purpose, making brute-force attacks take thousands of years. We also need <strong>long, uncommon passwords</strong> (not in a dictionary) and <strong>Two-Factor Authentication (2FA)</strong>.</p>
            </div>
        </div>`;
    }

    return `
    <!DOCTYPE html><html lang="en"><head><title>Message Board</title>
    <style>
        body{font-family:system-ui;background:#4a044e;color:white;padding:20px;}
        h1{color:#fcd34d;}
        .msg-chirho{border:2px solid #fcd34d;margin-top:20px;padding:10px;background:#701a75;border-radius:8px;}
        .note-chirho{background:#c05621;padding:15px;border-radius:8px;margin-top:30px;}
    </style></head>
    <body>
        <h1>Welcome, ${usernameChirho}</h1>
        <p>Your secret messages:</p>
        ${messagesHtmlChirho}
        ${specialNoteChirho}
        <br><a href="/">Logout</a>
    </body></html>`;
}

// --- Request Handlers ---
async function handleGetChirho(requestChirho) {
    console.log(`ACTION: Serving login page (GET)`);
    return new Response(generateLoginPageChirho(), { headers: { "Content-Type": "text/html; charset=utf-8" } });
}

async function handlePostLoginChirho(requestChirho) {
    const formDataChirho = await requestChirho.formData();
    const usernameChirho = formDataChirho.get("usernameChirho")?.toString() || "";
    const passwordChirho = formDataChirho.get("passwordChirho")?.toString() || "";

    console.log(`ACTION: Login attempt for user: ${usernameChirho}`);

    const userChirho = dbChirho.query("SELECT * FROM users_chirho WHERE username_chirho = ?;").get(usernameChirho);

    if (!userChirho) {
        console.log(`FAILURE: No user found with name ${usernameChirho}`);
        return new Response(generateLoginPageChirho("Invalid username or password!"), { headers: { "Content-Type": "text/html; charset=utf-8" } });
    }

    const passwordHashChirho = new Bun.CryptoHasher("md5").update(userChirho.salt_chirho + passwordChirho).digest("hex");

    if (userChirho.password_hash_chirho === passwordHashChirho) {
        console.log(`SUCCESS: Login for ${usernameChirho}`);
        const messagesChirho = dbChirho.query("SELECT * FROM messages_chirho WHERE user_id_chirho = ?;").all(userChirho.id_chirho);
        const headersChirho = {
            ''Content-Type'': ''text/html; charset=utf-8'',
            ''Set-Cookie'': `authChirho=${userChirho.id_chirho}; Path=/`
        };
        return new Response(generateDashboardChirho(userChirho.username_chirho, messagesChirho), { headers: headersChirho });
    } else {
        console.log(`FAILURE: Failed login for ${usernameChirho} (password incorrect)`);
        return new Response(generateLoginPageChirho("Invalid username or password!"), { headers: { "Content-Type": "text/html; charset=utf-8" } });
    }
}

async function handleDashboardChirho(requestChirho) {
    const cookieHeaderChirho = requestChirho.headers.get("cookie") || "";
    const cookiesChirho = Object.fromEntries(cookieHeaderChirho.split('';'').map(cookieStringChirho => cookieStringChirho.trim().split(''='')));

    if (cookiesChirho.authChirho) {
        const userIdChirho = cookiesChirho.authChirho;
        const userChirho = dbChirho.query("SELECT * FROM users_chirho WHERE id_chirho = ?;").get(userIdChirho);

        if (userChirho) {
            console.log(`ACTION: Serving dashboard for ${userChirho.username_chirho}`);
            const messagesChirho = dbChirho.query("SELECT * FROM messages_chirho WHERE user_id_chirho = ?;").all(userChirho.id_chirho);
            return new Response(generateDashboardChirho(userChirho.username_chirho, messagesChirho), { headers: { "Content-Type": "text/html; charset=utf-8" } });
        }
    }
    return new Response(null, { status: 302, headers: { "Location": "/" } });
}

// --- Main Server ---
async function mainChirho() {
    const serverChirho = Bun.serve({
        port: 8000,
        hostname: "0.0.0.0",

        async fetch(requestChirho) {
            const urlChirho = new URL(requestChirho.url);
            if (urlChirho.pathname === "/") {
                return await handleGetChirho(requestChirho);
            }
            if (urlChirho.pathname === "/login-chirho") {
                return await handlePostLoginChirho(requestChirho);
            }
            if (urlChirho.pathname === "/dashboard-chirho") {
                return await handleDashboardChirho(requestChirho);
            }
            return new Response("Not Found", { status: 404 });
        },
        error(errorChirho) {
            console.error(errorChirho);
            return new Response("An error occurred.", { status: 500 });
        }
    });

    console.log(`Hallelujah! The "Securer-er-er" Ducky Mafia server is running at http://localhost:${serverChirho.port}`);
}

mainChirho();
EOF
    echo "✅ Created server program: $TARGET_JS_SERVER_FILE_CHIRHO"
fi

# --- 4. Create the Brute Force Cracking Tool ---
if [[ ! -f "$TARGET_JS_BRUTEFORCE_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_JS_BRUTEFORCE_FILE_CHIRHO"
// "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

console.log("--- Ducky Mafia Password Cracker (Salted MD5) ---");
console.log("This tool will try to find a password (lowercase letters & numbers).\n");

const hashToCrackChirho = prompt("Paste the password hash from the database: ");
const saltChirho = prompt("Paste the salt from the database: ");

if (!hashToCrackChirho || !saltChirho) {
    console.log("You must provide both a hash and a salt. Exiting.");
} else {
    console.log(`\nAttempting to crack hash: ${hashToCrackChirho}\nWith salt: ${saltChirho}`);
    console.log("Starting attack... Press CTRL+C to quit.");
    crackPasswordChirho(hashToCrackChirho.trim(), saltChirho.trim());
}

/**
 * Generates password guesses of increasing length.
 * This is a recursive generator function, a very powerful concept!
 * @param {string} prefixChirho - The current string to add characters to.
 * @param {number} maxLengthChirho - The max depth to search (for safety).
 */
async function* generateGuessesChirho(prefixChirho = "", maxLengthChirho = 8) {
    const charsetChirho = "abcdefghijklmnopqrstuvwxyz0123456789";

    // First, try all single characters
    if (prefixChirho === "") {
        for (const charChirho of charsetChirho) {
            yield charChirho;
        }
    }

    // Then, recursively add characters
    if (prefixChirho.length < maxLengthChirho) {
        for (const charChirho of charsetChirho) {
            const newGuessChirho = prefixChirho + charChirho;
            // Only yield guesses *after* the single-char run, to avoid duplicates
            if (prefixChirho.length > 0) {
                 yield newGuessChirho;
            }
            // Recurse deeper
            yield* generateGuessesChirho(newGuessChirho, maxLengthChirho);
        }
    }
}

async function crackPasswordChirho(hashToCrackChirho, saltChirho) {
    let attemptsChirho = 0;
    const startTimeChirho = Date.now();
    const maxLenChirho = 6; // A safe limit for a class demo (finds ''mob7'')

    // We must create a new hasher for *every single attempt*
    // This is what makes MD5 fast and insecure.

    console.log(`Searching for passwords up to ${maxLenChirho} characters...`);

    // A simple generator for lengths 1 to maxLenChirho
    async function* guessGeneratorChirho() {
        const charsetChirho = "abcdefghijklmnopqrstuvwxyz0123456789";
        let currentGuessArrChirho = [0]; // Start with length 1

        while (currentGuessArrChirho.length <= maxLenChirho) {
            // Generate the string from indices
            let guessChirho = "";
            for (const indexChirho of currentGuessArrChirho) {
                guessChirho += charsetChirho[indexChirho];
            }
            yield guessChirho;

            // Increment the indices
            let iChirho = currentGuessArrChirho.length - 1;
            while (iChirho >= 0) {
                currentGuessArrChirho[iChirho]++;
                if (currentGuessArrChirho[iChirho] === charsetChirho.length) {
                    currentGuessArrChirho[iChirho] = 0;
                    iChirho--;
                } else {
                    break;
                }
            }

            // If we''ve carried all the way, add a new character
            if (iChirho < 0) {
                currentGuessArrChirho = new Array(currentGuessArrChirho.length + 1).fill(0);
            }
        }
    }


    for await (const guessChirho of guessGeneratorChirho()) {
        attemptsChirho++;

        // Update status on the same line
        if (attemptsChirho % 10000 === 0) {
            process.stdout.write(`Attempts: ${attemptsChirho.toLocaleString()} | Trying: ${guessChirho.padEnd(10)}\r`);
        }

        const hasherChirho = new Bun.CryptoHasher("md5");
        hasherChirho.update(saltChirho + guessChirho);
        const hashResultChirho = hasherChirho.digest("hex");

        if (hashResultChirho === hashToCrackChirho) {
            const endTimeChirho = Date.now();
            const durationChirho = (endTimeChirho - startTimeChirho) / 1000;
            process.stdout.write("\n"); // Move to a new line
            console.log(`\n\nHallelujah! Password found!`);
            console.log(`Password is: ${guessChirho}`);
            console.log(`Found in ${attemptsChirho.toLocaleString()} attempts and ${durationChirho} seconds.`);
            return;
        }
    }

    console.log(`\n\nAttack finished after ${maxLenChirho} characters. Password not found.`);
}
EOF
    echo "✅ Created brute-force tool: $TARGET_JS_BRUTEFORCE_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week13-session3-chirho.sh',
  133,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 14 Session 1 (payload-week14-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'yzQkmr28RBVw7zK43Jm8k',
  'Week 14 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 14, Session 1',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 14, Session 1
# This script creates the "Ducky Mafia SQL Injection" challenge.

# --- Output initial messages ---
echo "Payload for Week 14 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-14-chirho/session-1-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 1: "The Ducky Mafia" Investigation Pt. 3 - SQL Injection ========
# ==============================================================================

# --- Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - SQL Injection Challenge</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 900px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        h2 { color: #1e3a8a; border-bottom: 2px solid #3b82f6; padding-bottom: 8px; margin-top: 30px; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; background-color: #f1f5f9; padding: 2px 6px; border-radius: 4px; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; overflow-x: auto; }
        .mission-brief { background-color: #fffbeb; border: 2px solid #fde047; padding: 15px; border-radius: 8px; margin: 20px 0; }
        .intel-box { background-color: #dbeafe; border: 2px solid #3b82f6; padding: 15px; border-radius: 8px; margin: 20px 0; }
        .warning-box { background-color: #fee2e2; border: 2px solid #ef4444; padding: 15px; border-radius: 8px; margin: 20px 0; }
        table { width: 100%; border-collapse: collapse; margin: 10px 0; }
        table th { background-color: #3b82f6; color: white; padding: 10px; text-align: left; }
        table td { border: 1px solid #cbd5e1; padding: 8px; }
        table tr:nth-child(even) { background-color: #f8fafc; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Challenge: SQL Injection Investigation 🦆💉</h1>
        <p>Hallelujah! Our investigation takes a new turn. The Ducky Mafia has launched yet another message board, and this time they think they''re completely secure with their "hashed passwords."</p>
        <p class="verse-chirho">"The fear of the LORD is the beginning of knowledge: but fools despise wisdom and instruction." - Proverbs 1:7</p>
        <p>The Don and his crew have learned nothing. They''re still making critical security mistakes. This time, we''re going to exploit a different vulnerability: <strong>SQL Injection</strong>.</p>

        <div class="mission-brief">
            <strong>🎯 MISSION BRIEF:</strong>
            <p>A vulnerable server is running at <strong><code>https://cp2025.loveJesus.software</code></strong>. The Ducky Mafia''s message board has a login form, but the code is vulnerable to SQL injection attacks.</p>
            <p>Your mission is to use SQL injection techniques to bypass the login and access Don_Quackote''s secret messages <em>without knowing his password</em>!</p>
        </div>

        <div class="intel-box">
            <h3>🔍 INTELLIGENCE REPORT</h3>
            <p>Our intelligence agents have infiltrated the Ducky Mafia''s operations and discovered the database schema they''re using:</p>

            <h4>Table: <code>users_chirho</code></h4>
            <table>
                <thead>
                    <tr>
                        <th>Column Name</th>
                        <th>Type</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><code>id_chirho</code></td>
                        <td>INTEGER</td>
                        <td>Primary key</td>
                    </tr>
                    <tr>
                        <td><code>username_chirho</code></td>
                        <td>TEXT</td>
                        <td>Username (UNIQUE)</td>
                    </tr>
                    <tr>
                        <td><code>password_hash_chirho</code></td>
                        <td>TEXT</td>
                        <td>MD5 hashed password</td>
                    </tr>
                </tbody>
            </table>

            <h4>Table: <code>messages_chirho</code></h4>
            <table>
                <thead>
                    <tr>
                        <th>Column Name</th>
                        <th>Type</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><code>id_chirho</code></td>
                        <td>INTEGER</td>
                        <td>Primary key</td>
                    </tr>
                    <tr>
                        <td><code>user_id_chirho</code></td>
                        <td>INTEGER</td>
                        <td>Foreign key to users_chirho</td>
                    </tr>
                    <tr>
                        <td><code>message_base64_chirho</code></td>
                        <td>TEXT</td>
                        <td>Base64-encoded message</td>
                    </tr>
                </tbody>
            </table>

            <p><strong>Known usernames:</strong></p>
            <ul>
                <li><code>Agent_Puddles</code></li>
                <li><code>Sgt_Bill</code></li>
                <li><code>Don_Quackote</code> ← Our target!</li>
            </ul>
        </div>

        <h2>What is SQL Injection?</h2>
        <p>SQL Injection is a security vulnerability that occurs when user input is not properly sanitized before being used in SQL queries. Attackers can inject malicious SQL code to manipulate the database.</p>

        <p>For example, if a login query looks like this:</p>
        <pre><code>SELECT * FROM users_chirho
WHERE username_chirho = ''[USER_INPUT]''
AND password_hash_chirho = ''[PASSWORD_HASH]'';</code></pre>

        <p>An attacker might enter a username like:</p>
        <pre><code>Don_Quackote'' --</code></pre>

        <p>Which would make the query become:</p>
        <pre><code>SELECT * FROM users_chirho
WHERE username_chirho = ''Don_Quackote'' --''
AND password_hash_chirho = ''[PASSWORD_HASH]'';</code></pre>

        <p>The <code>--</code> is a comment in SQL, so everything after it is ignored! This bypasses the password check entirely.</p>

        <div class="warning-box">
            <h3>⚠️ ETHICAL REMINDER</h3>
            <p>SQL Injection is a serious security vulnerability. In this class, we learn about it to:</p>
            <ul>
                <li>Understand how to <strong>protect</strong> our own applications</li>
                <li>Develop secure coding practices</li>
                <li>Become ethical security professionals</li>
            </ul>
            <p><strong>Never use these techniques on systems you don''t have permission to test!</strong></p>
            <p class="verse-chirho" style="font-size: 0.9em;">"Thou shalt not steal." - Exodus 20:15</p>
        </div>

        <h2>Your Task</h2>
        <ol>
            <li>Make sure the server is running at <code>https://cp2025.loveJesus.software</code></li>
            <li>Open your browser and navigate to that address</li>
            <li>Use SQL injection techniques to log in as <code>Don_Quackote</code> without knowing his password</li>
            <li>Find the secret messages that provide evidence of the Ducky Mafia''s crimes</li>
        </ol>

        <h2>Hints</h2>
        <ul>
            <li>Try adding <code>'' --</code> after the username</li>
            <li>The <code>--</code> comments out the rest of the SQL query</li>
            <li>You can leave the password field empty or put any value</li>
            <li>Experiment with different SQL injection payloads</li>
        </ul>

        <h2>Next Steps</h2>
        <p>Once you''ve successfully broken in and found the evidence, we''ll learn how to <strong>prevent</strong> SQL injection using:</p>
        <ul>
            <li>Parameterized queries</li>
            <li>Input validation and sanitization</li>
            <li>Prepared statements</li>
            <li>ORMs (Object-Relational Mappers)</li>
        </ul>

        <p style="text-align: center; margin-top: 40px; font-weight: bold; color: #1e3a8a;">
            Hallelujah! May the Lord guide you in this investigation! 🙏
        </p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
echo ""
echo "Next steps:"
echo "1. Make sure the vulnerable server is running at https://cp2025.loveJesus.software"
echo "2. Open $TARGET_HTML_FILE_CHIRHO in a browser to read the instructions"
echo "3. Use SQL injection to access Don_Quackote''s messages!"
',
  'bash',
  'bash payload-week14-session1-chirho.sh',
  141,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 14 Session 3 (payload-week14-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '_ji9eJ-2grmhN6zut-d8Z',
  'Week 14 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 14, Session 3',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 14, Session 3
# This script creates the "Discerning the Weather" API challenge.

# --- Output initial messages ---
echo "Payload for Week 14 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-14-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_APP_FILE_CHIRHO="$SESSION_DIR_CHIRHO/weather-chirho.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 3: "Discerning the Weather" API Challenge ========================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - A New Challenge</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        .mission-brief { background-color: #fffbeb; border: 2px solid #fde047; padding: 15px; border-radius: 8px; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Challenge: Discerning the Weather 🌦️</h1>
        <p>Hallelujah! For our next challenge, we have a simple webpage, <code>weather-chirho.html</code>, that fetches the current weather from a live, public API. However, it''s "stuck" showing the weather for Siberia!</p>
        <p class="verse-chirho">"O ye hypocrites, ye can discern the face of the sky; but can ye not discern the signs of the times?" - Matthew 16:3</p>
        <p>While discerning the times is more important, our mission for now is to "discern the sky" by fixing the code to show our local weather. While we do this, let us remember to also pray for the wisdom to discern the signs of the times and the truth of God''s Word.</p>

        <div class="mission-brief">
            <strong>YOUR MISSION:</strong>
            <p>Open <code>weather-chirho.html</code> in your code editor and complete two tasks:</p>
            <ol>
                <li>Find the <code>latitudeChirho</code> and <code>longitudeChirho</code> variables. Change them from Siberia to <strong>Fort Myers (Latitude: 26.64, Longitude: -81.87)</strong>.</li>
                <li>Find the <code>updateSummaryMessageChirho</code> function. It''s empty! Add <code>if/else if/else</code> logic to display a message based on the temperature.</li>
            </ol>
            <p><strong>Coordinates for other cities:</strong></p>
            <ul>
                <li>London: (Lat: 51.51, Lng: -0.13)</li>
                <li>Tokyo: (Lat: 35.69, Lng: 139.69)</li>
                <li>Sydney: (Lat: -33.87, Lng: 151.21)</li>
            </ul>
        </div>

        <h2>How to Run the Program</h2>
        <p>This is a client-side app, so no server is needed!</p>
        <p>Simply open the <code>weather-chirho.html</code> file directly in your web browser to see it in action. Open the same file in your code editor to make your changes.</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the "Weather" App file ---
if [[ ! -f "$TARGET_APP_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_APP_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Discerning the Weather</title>
    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            background: linear-gradient(to top, #6e8efb, #a777e3);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
            box-sizing: border-box;
        }
        #weather-card-chirho {
            background: rgba(0, 0, 0, 0.3);
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 15px;
            padding: 30px 40px;
            text-align: center;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            backdrop-filter: blur(10px);
        }
        h1 {
            margin-top: 0;
            font-size: 2.5em;
        }
        #temp-display-chirho {
            font-size: 5em;
            font-weight: bold;
            margin: 10px 0;
        }
        #summary-message-chirho {
            font-size: 1.2em;
            font-style: italic;
            min-height: 25px;
            color: #f6e05e;
        }
        button {
            font-size: 1.2em;
            padding: 15px 30px;
            border-radius: 8px;
            border: none;
            background: #f6e05e;
            color: #1e3a8a;
            font-weight: bold;
            cursor: pointer;
            margin-top: 20px;
            transition: transform 0.2s;
        }
        button:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <div id="weather-card-chirho">
        <h1>Current Weather</h1>
        <h2>Lat: <span id="lat-chirho">lat</span>, Lng: <span id="lng-chirho">lng</span></h2>
        <div id="temp-display-chirho">--°F</div>
        <div id="summary-message-chirho">Hallelujah, that''s the weather there.</div>
        <button onclick="fetchWeatherChirho()">Refresh Weather</button>
    </div>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        // --- 1. THE FIRST TASK IS HERE ---
        // Change these coordinates to Fort Myers, FL, or any other city!
        // Fort Myers: (Lat: 26.64, Lng: -81.87)
        let latitudeChirho = 61.5;   // Siberia''s Latitude
        let longitudeChirho = 105.3; // Siberia''s Longitude

        // --- Get Element References ---
        const latDisplayChirho = document.getElementById(''lat-chirho'');
        const lngDisplayChirho = document.getElementById(''lng-chirho'');
        const tempDisplayChirho = document.getElementById(''temp-display-chirho'');
        const summaryMessageChirho = document.getElementById(''summary-message-chirho'');


        latDisplayChirho.textContent = latitudeChirho;
        lngDisplayChirho.textContent = longitudeChirho;

        /**
         * This function calls the public weather API (Open-Meteo)
         * to get the current weather for our coordinates.
         */
        async function fetchWeatherChirho() {
            console.log("Fetching weather...");
            tempDisplayChirho.textContent = "Loading...";

            // We build the API URL using our variables.
            const apiUrlChirho = `https://api.open-meteo.com/v1/forecast?latitude=${latitudeChirho}&longitude=${longitudeChirho}&current=temperature_2m&temperature_unit=fahrenheit`;

            // the contents of that URL will be like the following
            // {
            //   "latitude": 61.5,
            //   "longitude": 105.3,
            //   "generationtime_ms": 0.123,
            //   "utc_offset_seconds": 25200,
            //   "timezone": "Asia/Krasnoyarsk",
            //   "timezone_abbreviation": "+07",
            //   "elevation": 154.0,
            //   "current_units": {
            //     "time": "iso8601",
            //     "interval": "seconds",
            //     "temperature_2m": "°F"
            //   },
            //   "current": {
            //     "time": "2024-10-27T10:00",
            //     "interval": 900,
            //     "temperature_2m": 15.6
            //   }
            // }


            try {
                const responseChirho = await fetch(apiUrlChirho);
                const dataChirho = await responseChirho.json();

                // Get the temperature from the JSON data
                const currentTemperatureChirho = dataChirho.current.temperature_2m;

                // Update the page
                tempDisplayChirho.textContent = `${currentTemperatureChirho}°F`;

                // Call the function to update the summary message
                updateSummaryMessageChirho(currentTemperatureChirho);

            } catch (errorChirho) {
                console.error("Error fetching weather:", errorChirho);
                tempDisplayChirho.textContent = "Error";
                summaryMessageChirho.textContent = "Could not fetch the weather.";
            }
        }

        /**
         * This function displays a message based on the temperature.
         * @param {number} tempParameterChirho - The current temperature in Fahrenheit.
         */
        function updateSummaryMessageChirho(tempParameterChirho) {

            // --- 2. THE SECOND TASK IS HERE ---
            // Add your if/else if/else logic inside this function
            // to change the text of ''summaryMessageChirho''.
            //
            // - If temp is below 40: "BRRRRR 🥶"
            // - If temp is below 65: "It''s cold. 🧥"
            // - If temp is above 90: "It''s hot! 🥵"
            // - If temp is above 80: "It''s warm. 😊"
            // - Otherwise: "The weather is mild."
            //
            // ------------------------------------

            // This is the default placeholder. You should change this!
            summaryMessageChirho.textContent = "Hallelujah, that''s the weather there.";
        }

        // Fetch weather when the page first loads
        document.addEventListener(''DOMContentLoaded'', fetchWeatherChirho);

    </script>
</body>
</html>
EOF
    echo "✅ Created ''Discerning the Weather'' game for session 3."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week14-session3-chirho.sh',
  143,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 15 Session 1 (payload-week15-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'BTe7-t3bKugymUsxMIFNn',
  'Week 15 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 15, Session 1',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 15, Session 1
# This script creates the "Gibeon Sun Timer" API challenge.

# --- Output initial messages ---
echo "Payload for Week 15 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-15-chirho/session-1-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_APP_FILE_CHIRHO="$SESSION_DIR_CHIRHO/sun-timer-chirho.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 1: "Gibeon Sun Timer" API Challenge ==============================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - A New Challenge</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        .mission-brief { background-color: #fffbeb; border: 2px solid #fde047; padding: 15px; border-radius: 8px; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Challenge: The Gibeon Sun Timer ☀️</h1>
        <p>Hallelujah! Today we''ll work with a live API to see God''s perfect order in creation. We''ll build a webpage that fetches the exact sunrise and sunset times for any place on Earth.</p>
        <p class="verse-chirho">"The heavens declare the glory of God; and the firmament sheweth his handywork." - Psalm 19:1</p>
        <p>We are connecting to a public API, but the data it sends back is "raw" and hard to read. Your mission is to fix the code to format the data so everyone can understand it.</p>

        <div class="mission-brief">
            <strong>YOUR MISSION:</strong>
            <p>Open <code>sun-timer-chirho.html</code> in your code editor and complete two tasks:</p>
            <ol>
                <li>Change the <code>latitudeChirho</code> and <code>longitudeChirho</code> from Gibeon to <strong>Fort Myers (Lat: 26.64, Lng: -81.87)</strong>.</li>
                <li>Find the <code>updatePageChirho</code> function. It''s showing an "ugly" time string! You must fix it by wrapping the string in a <strong><code>new Date()</code></strong> object and then using the <strong><code>.toLocaleTimeString()</code></strong> method to make it human-readable.</li>
            </ol>
            <p><strong>Coordinates for other cities:</strong></p>
            <ul>
                <li>Jerusalem: (Lat: 31.77, Lng: 35.22)</li>
                <li>London: (Lat: 51.51, Lng: -0.13)</li>
                <li>Tokyo: (Lat: 35.69, Lng: 139.69)</li>
            </ul>
        </div>

        <h2>How to Run the Program</h2>
        <p>This is a client-side app, so no server is needed!</p>
        <p>Simply open the <code>sun-timer-chirho.html</code> file directly in your web browser. Open the same file in your code editor to make your changes.</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the "Broken" App file ---
if [[ ! -f "$TARGET_APP_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_APP_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Heavens Declare His Glory</title>
    <style>
        body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Oxygen, Ubuntu, Cantarell, ''Open Sans'', ''Helvetica Neue'', sans-serif;
            background: linear-gradient(to top, #09203f, #537895);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
            box-sizing: border-box;
            text-align: center;
        }
        #sun-card-chirho {
            background: rgba(0, 0, 0, 0.3);
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 15px;
            padding: 30px 40px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            backdrop-filter: blur(10px);
        }
        h1 {
            margin-top: 0;
            font-size: 2.5em;
            color: #ffc300;
        }
        .time-display-chirho {
            font-size: 1.5em;
            margin: 20px 0;
        }
        .time-label-chirho {
            font-size: 0.8em;
            color: #ddd;
            text-transform: uppercase;
        }
        .time-value-chirho {
            font-size: 2em;
            font-weight: bold;
            color: #fff;
            min-height: 40px;
        }
    </style>
</head>
<body>

    <div id="sun-card-chirho">
        <h1>Gibeon Sun Timer</h1>
        <p>"...for a sign...and for days and years." (Gen 1:14)</p>

        <div class="time-display-chirho">
            <div class="time-label-chirho">Sunrise</div>
            <div id="sunrise-time-chirho" class="time-value-chirho">Loading...</div>
        </div>

        <div class="time-display-chirho">
            <div class="time-label-chirho">Sunset</div>
            <div id="sunset-time-chirho" class="time-value-chirho">Loading...</div>
        </div>
    </div>

    <script>
        // "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)

        // --- 1. THE FIRST TASK IS HERE ---
        // Change these coordinates to Fort Myers, FL, or any other city!
        // Fort Myers: (Lat: 26.64, Lng: -81.87)
        let latitudeChirho = 31.89;   // Gibeon''s Latitude
        let longitudeChirho = 35.18; // Gibeon''s Longitude

        // --- Get Element References ---
        const sunriseElementChirho = document.getElementById(''sunrise-time-chirho'');
        const sunsetElementChirho = document.getElementById(''sunset-time-chirho'');

        /**
         * This function calls the public API (sunrise-sunset.org)
         * to get the sunrise and sunset times for our coordinates.
         */
        async function fetchSunTimesChirho() {
            console.log("Fetching sun times...");

            // We build the API URL using our variables.
            const apiUrlChirho = `https://api.sunrise-sunset.org/json?lat=${latitudeChirho}&lng=${longitudeChirho}&formatted=0`;

            try {
                const responseChirho = await fetch(apiUrlChirho);
                const dataChirho = await responseChirho.json();

                if (dataChirho.status === "OK") {
                    // The data has arrived! Now we call the function to display it.
                    updatePageChirho(dataChirho.results.sunrise, dataChirho.results.sunset);
                } else {
                    throw new Error("API status was not OK");
                }

            } catch (errorChirho) {
                console.error("Error fetching sun times:", errorChirho);
                sunriseElementChirho.textContent = "Error";
                sunsetElementChirho.textContent = "Error";
            }
        }

        /**
         * This function updates the page with the time data.
         * @param {string} sunriseStringChirho - The "ugly" UTC time string from the API.
         * @param {string} sunsetStringChirho - The "ugly" UTC time string from the API.
         */
        function updatePageChirho(sunriseStringChirho, sunsetStringChirho) {

            // --- 2. THE SECOND TASK IS HERE ---
            // This is "raw" data, like "2025-11-15T03:39:52+00:00".
            // It''s not user-friendly!

            // HINT: To fix this, wrap the string in a new Date() object,
            // and then call the .toLocaleTimeString() method on it.
            //

            sunriseElementChirho.textContent = sunriseStringChirho;
            sunsetElementChirho.textContent = sunsetStringChirho;
        }

        // Fetch the times when the page first loads
        document.addEventListener(''DOMContentLoaded'', fetchSunTimesChirho);

    </script>
</body>
</html>
EOF
    echo "✅ Created ''Gibeon Sun Timer'' game for session 1."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week15-session1-chirho.sh',
  151,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 15 Session 2 (payload-week15-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'zaeRujXqjr1G6HecFVmde',
  'Week 15 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 15, Session 2',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 15, Session 2
# This script creates the "Scripture Counselor" game.

# --- Output initial messages ---
echo "Payload for Week 15 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-15-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_APP_FILE_CHIRHO="$SESSION_DIR_CHIRHO/scripture-counselor-chirho.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 2: "The Scripture Counselor" Game ================================
# ==============================================================================

# --- 1. Create the main game file (index.html) ---
# We overwrite this file to ensure the latest fixes are applied.
echo "Creating/Updating game file at $TARGET_HTML_FILE_CHIRHO..."

cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!--
# For God so loved the world that he gave his only begotten Son, that whoever believes in him should not perish but have eternal life.
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scripture Counselor</title>
    <style>
        /* CSS Classes use kebab-case + -chirho suffix */
        :root {
            --primary-chirho: #2c3e50;
            --accent-chirho: #e67e22;
            --bg-chirho: #fdfbf7;
            --card-bg-chirho: #ffffff;
            --text-chirho: #333333;
            --success-chirho: #27ae60;
            --error-chirho: #c0392b;
        }

        body {
            font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--bg-chirho);
            color: var(--text-chirho);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        #app-root-chirho {
            width: 100%;
            max-width: 800px;
            margin: 20px;
        }

        .game-container-chirho {
            background-color: var(--card-bg-chirho);
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            overflow: hidden;
            display: flex;
            flex-direction: column;
        }

        .header-chirho {
            background-color: var(--primary-chirho);
            color: white;
            padding: 20px;
            text-align: center;
            position: relative;
        }

        .header-title-chirho {
            margin: 0;
            font-size: 1.8rem;
            font-weight: 600;
        }

        .progress-bar-container-chirho {
            background-color: rgba(255,255,255,0.2);
            height: 6px;
            width: 100%;
            margin-top: 15px;
            border-radius: 3px;
        }

        .progress-fill-chirho {
            background-color: var(--accent-chirho);
            height: 100%;
            width: 0%;
            transition: width 0.3s ease;
            border-radius: 3px;
        }

        .scene-area-chirho {
            padding: 30px;
            text-align: center;
            border-bottom: 1px solid #eee;
            background: linear-gradient(to bottom, #fdfbf7, #fff);
        }

        .avatar-wrapper-chirho {
            width: 100px;
            height: 100px;
            margin: 0 auto 15px;
        }

        .character-name-chirho {
            font-weight: bold;
            font-size: 1.2rem;
            color: var(--primary-chirho);
            margin-bottom: 10px;
        }

        .dialogue-box-chirho {
            background-color: #f0f4f8;
            padding: 15px;
            border-radius: 10px;
            position: relative;
            display: inline-block;
            max-width: 90%;
            font-style: italic;
            font-size: 1.1rem;
            line-height: 1.5;
        }

        .dialogue-box-chirho::after {
            content: '''';
            position: absolute;
            top: -10px;
            left: 50%;
            transform: translateX(-50%);
            border-width: 0 10px 10px;
            border-style: solid;
            border-color: transparent transparent #f0f4f8;
        }

        .options-grid-chirho {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 15px;
            padding: 20px;
            background-color: #fafafa;
        }

        .verse-btn-chirho {
            background-color: white;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            padding: 15px;
            cursor: pointer;
            transition: all 0.2s ease;
            text-align: left;
            font-size: 0.95rem;
            display: flex;
            flex-direction: column;
            position: relative;
            overflow: hidden;
        }

        .verse-btn-chirho:hover {
            border-color: var(--primary-chirho);
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.05);
        }

        .verse-ref-chirho {
            font-weight: bold;
            color: var(--accent-chirho);
            margin-bottom: 5px;
            font-size: 0.85rem;
            text-transform: uppercase;
        }

        .verse-text-chirho {
            color: #555;
        }

        /* Animation States */
        .correct-anim-chirho {
            background-color: #d4edda !important;
            border-color: var(--success-chirho) !important;
            animation: pulse-green-chirho 0.5s;
        }

        .wrong-anim-chirho {
            background-color: #f8d7da !important;
            border-color: var(--error-chirho) !important;
            animation: shake-chirho 0.4s;
        }

        @keyframes shake-chirho {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
        }

        @keyframes pulse-green-chirho {
            0% { transform: scale(1); }
            50% { transform: scale(1.02); }
            100% { transform: scale(1); }
        }

        /* Screens */
        .screen-chirho {
            display: none;
        }

        .active-chirho {
            display: block;
        }

        .start-screen-chirho, .end-screen-chirho {
            text-align: center;
            padding: 50px 20px;
        }

        .btn-main-chirho {
            background-color: var(--primary-chirho);
            color: white;
            border: none;
            padding: 15px 40px;
            font-size: 1.2rem;
            border-radius: 30px;
            cursor: pointer;
            margin-top: 30px;
            transition: background 0.3s;
        }

        .btn-main-chirho:hover {
            background-color: #34495e;
        }

        .score-badge-chirho {
            font-size: 4rem;
            font-weight: bold;
            color: var(--accent-chirho);
            margin: 20px 0;
        }

        .hidden-chirho {
            display: none !important;
        }

    </style>
</head>
<body>

<div id="app-root-chirho">

    <!-- START SCREEN -->
    <div id="start-screen-chirho" class="game-container-chirho screen-chirho active-chirho start-screen-chirho">
        <div style="margin-bottom: 20px;">
            <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="#2c3e50" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path>
                <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path>
                <path d="M12 6v6"></path>
                <path d="M9 9h6"></path>
            </svg>
        </div>
        <h1 class="header-title-chirho">The Scripture Counselor</h1>
        <p style="max-width: 500px; margin: 20px auto; line-height: 1.6;">
            Welcome. 12 souls are seeking guidance. Listen to their troubles and select the most appropriate Scripture to minister to their hearts.
        </p>
        <button id="start-btn-chirho" class="btn-main-chirho">Begin Counseling</button>
    </div>

    <!-- GAME SCREEN -->
    <div id="game-screen-chirho" class="game-container-chirho screen-chirho">
        <div class="header-chirho">
            <h2 class="header-title-chirho">Counseling Session</h2>
            <div class="progress-bar-container-chirho">
                <div id="progress-fill-chirho" class="progress-fill-chirho"></div>
            </div>
        </div>

        <div class="scene-area-chirho">
            <div id="avatar-container-chirho" class="avatar-wrapper-chirho">
                <!-- SVG injected by JS -->
            </div>
            <div id="character-name-chirho" class="character-name-chirho">Name</div>
            <div id="dialogue-text-chirho" class="dialogue-box-chirho">
                Situation text goes here...
            </div>
        </div>

        <div id="options-container-chirho" class="options-grid-chirho">
            <!-- Buttons injected by JS -->
        </div>
    </div>

    <!-- END SCREEN -->
    <div id="end-screen-chirho" class="game-container-chirho screen-chirho end-screen-chirho">
        <h2>Session Complete</h2>
        <p>You have offered counsel to all.</p>

        <div id="final-score-chirho" class="score-badge-chirho">0/12</div>

        <div id="final-message-chirho" style="font-style: italic; margin-bottom: 20px;"></div>

        <button id="restart-btn-chirho" class="btn-main-chirho">Counsel Again</button>
    </div>

</div>

<script>
/**
 * Identifier Naming Convention: Chirho Suffix
 * ALL identifiers (variables, functions, classes, etc.) are suffixed with "Chirho"
 */

// --- DATA CHIRHO ---

const versesPoolChirho = [
    { refChirho: "John 11:35", textChirho: "Jesus wept." },
    { refChirho: "Proverbs 3:5", textChirho: "Trust in the Lord with all your heart." },
    { refChirho: "Psalm 23:1", textChirho: "The Lord is my shepherd; I shall not want." },
    { refChirho: "Philippians 4:13", textChirho: "I can do all things through Christ who strengthens me." },
    { refChirho: "Romans 8:28", textChirho: "And we know that in all things God works for the good of those who love him." },
    { refChirho: "Genesis 1:1", textChirho: "In the beginning God created the heavens and the earth." },
    { refChirho: "Psalm 119:105", textChirho: "Your word is a lamp for my feet, a light on my path." },
    { refChirho: "Matthew 5:14", textChirho: "You are the light of the world." },
    { refChirho: "Psalm 46:1", textChirho: "God is our refuge and strength, an ever-present help in trouble." },
    { refChirho: "1 Thessalonians 5:17", textChirho: "Pray continually." },
    { refChirho: "Hebrews 11:1", textChirho: "Now faith is confidence in what we hope for and assurance about what we do not see." },
    { refChirho: "James 1:17", textChirho: "Every good and perfect gift is from above." },
    { refChirho: "Proverbs 18:10", textChirho: "The name of the Lord is a fortified tower." },
    { refChirho: "Galatians 5:22", textChirho: "But the fruit of the Spirit is love, joy, peace, forbearance..." },
    { refChirho: "Isaiah 40:31", textChirho: "But those who hope in the Lord will renew their strength." },
    { refChirho: "Romans 3:23", textChirho: "For all have sinned and fall short of the glory of God." },
    { refChirho: "Romans 6:23", textChirho: "For the wages of sin is death, but the gift of God is eternal life." },
    { refChirho: "Matthew 28:19", textChirho: "Therefore go and make disciples of all nations." },
    { refChirho: "Psalm 19:1", textChirho: "The heavens declare the glory of God." },
    { refChirho: "Revelation 22:13", textChirho: "I am the Alpha and the Omega, the First and the Last." },
    { refChirho: "Ephesians 2:8", textChirho: "For it is by grace you have been saved, through faith." },
    { refChirho: "Joshua 1:9", textChirho: "Be strong and courageous. Do not be afraid." },
    { refChirho: "1 Peter 5:7", textChirho: "Cast all your anxiety on him because he cares for you." },
    { refChirho: "Proverbs 17:17", textChirho: "A friend loves at all times." },
    { refChirho: "Matthew 6:33", textChirho: "But seek first his kingdom and his righteousness." },
    { refChirho: "Psalm 118:24", textChirho: "This is the day the Lord has made; let us rejoice and be glad in it." },
    { refChirho: "Proverbs 15:1", textChirho: "A gentle answer turns away wrath." },
    { refChirho: "Psalm 37:4", textChirho: "Take delight in the Lord, and he will give you the desires of your heart." },
    { refChirho: "Micah 6:8", textChirho: "To act justly and to love mercy and to walk humbly with your God." },
    { refChirho: "1 John 4:19", textChirho: "We love because he first loved us." }
];

const casesDataChirho = [
    {
        idChirho: 1,
        nameChirho: "Sarah",
        situationChirho: "I feel so anxious about tomorrow''s job interview. My heart won''t stop racing and I can''t sleep.",
        correctVerseChirho: { refChirho: "Philippians 4:6-7", textChirho: "Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God." },
        colorChirho: "#FFB6C1"
    },
    {
        idChirho: 2,
        nameChirho: "Marcus",
        situationChirho: "I''ve made so many mistakes. I feel like God could never forgive someone like me.",
        correctVerseChirho: { refChirho: "1 John 1:9", textChirho: "If we confess our sins, he is faithful and just and will forgive us our sins and purify us from all unrighteousness." },
        colorChirho: "#ADD8E6"
    },
    {
        idChirho: 3,
        nameChirho: "Elena",
        situationChirho: "I feel completely alone. My family is far away and I have no friends here.",
        correctVerseChirho: { refChirho: "Hebrews 13:5", textChirho: "Never will I leave you; never will I forsake you." },
        colorChirho: "#98FB98"
    },
    {
        idChirho: 4,
        nameChirho: "David",
        situationChirho: "My coworker insulted me today. I''m so angry I want to go back and yell at him right now.",
        correctVerseChirho: { refChirho: "James 1:19", textChirho: "Everyone should be quick to listen, slow to speak and slow to become angry." },
        colorChirho: "#FFD700"
    },
    {
        idChirho: 5,
        nameChirho: "Jordan",
        situationChirho: "I keep getting tempted to go back to my old habits. It''s too hard to resist.",
        correctVerseChirho: { refChirho: "1 Corinthians 10:13", textChirho: "God is faithful; he will not let you be tempted beyond what you can bear." },
        colorChirho: "#DDA0DD"
    },
    {
        idChirho: 6,
        nameChirho: "Martha",
        situationChirho: "I am just so tired. I work, I take care of the kids, I serve at church... I''m exhausted.",
        correctVerseChirho: { refChirho: "Matthew 11:28", textChirho: "Come to me, all you who are weary and burdened, and I will give you rest." },
        colorChirho: "#F0E68C"
    },
    {
        idChirho: 7,
        nameChirho: "Thomas",
        situationChirho: "I don''t know what decision to make about moving. I''m confused about the future.",
        correctVerseChirho: { refChirho: "Proverbs 3:5-6", textChirho: "Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight." },
        colorChirho: "#87CEEB"
    },
    {
        idChirho: 8,
        nameChirho: "Ruth",
        situationChirho: "I''m afraid of speaking up about my faith. I''m scared people will judge me.",
        correctVerseChirho: { refChirho: "2 Timothy 1:7", textChirho: "For the Spirit God gave us does not make us timid, but gives us power, love and self-discipline." },
        colorChirho: "#FFA07A"
    },
    {
        idChirho: 9,
        nameChirho: "Simon",
        situationChirho: "My brother hurt me years ago. I know I should let it go, but I want him to pay.",
        correctVerseChirho: { refChirho: "Ephesians 4:32", textChirho: "Be kind and compassionate to one another, forgiving each other, just as in Christ God forgave you." },
        colorChirho: "#20B2AA"
    },
    {
        idChirho: 10,
        nameChirho: "Leo",
        situationChirho: "I built this business with my own two hands. I don''t need anyone''s help.",
        correctVerseChirho: { refChirho: "James 4:6", textChirho: "God opposes the proud but shows favor to the humble." },
        colorChirho: "#CD5C5C"
    },
    {
        idChirho: 11,
        nameChirho: "Hannah",
        situationChirho: "Everything is going wrong. Does God even have a plan for me?",
        correctVerseChirho: { refChirho: "Jeremiah 29:11", textChirho: "For I know the plans I have for you... plans to prosper you and not to harm you, plans to give you hope and a future." },
        colorChirho: "#E6E6FA"
    },
    {
        idChirho: 12,
        nameChirho: "Paul",
        situationChirho: "How can I tell if I really know God?",
        correctVerseChirho: { refChirho: "1 John 4:7", textChirho: "Dear friends, let us love one another, for love comes from God. Everyone who loves has been born of God and knows God." },
        colorChirho: "#90EE90"
    }
];

// --- STATE CHIRHO ---

let currentCaseIndexChirho = 0;
let scoreChirho = 0;
let audioCtxChirho = null;

// --- DOM ELEMENTS CHIRHO ---

const startScreenChirho = document.getElementById(''start-screen-chirho'');
const gameScreenChirho = document.getElementById(''game-screen-chirho'');
const endScreenChirho = document.getElementById(''end-screen-chirho'');
const startBtnChirho = document.getElementById(''start-btn-chirho'');
const restartBtnChirho = document.getElementById(''restart-btn-chirho'');
const avatarContainerChirho = document.getElementById(''avatar-container-chirho'');
const nameDisplayChirho = document.getElementById(''character-name-chirho'');
const dialogueDisplayChirho = document.getElementById(''dialogue-text-chirho'');
const optionsContainerChirho = document.getElementById(''options-container-chirho'');
const progressBarChirho = document.getElementById(''progress-fill-chirho'');
const finalScoreDisplayChirho = document.getElementById(''final-score-chirho'');
const finalMessageDisplayChirho = document.getElementById(''final-message-chirho'');

// --- AUDIO FUNCTIONS CHIRHO ---

function initAudioChirho() {
    if (!audioCtxChirho) {
        const AudioContextChirho = window.AudioContext || window.webkitAudioContext;
        if (AudioContextChirho) {
            audioCtxChirho = new AudioContextChirho();
        }
    }
    // IMPORTANT: Resume context if suspended (browser policy fix)
    if (audioCtxChirho && audioCtxChirho.state === ''suspended'') {
        audioCtxChirho.resume();
    }
}

function playToneChirho(freqChirho, typeChirho, durationChirho) {
    if (!audioCtxChirho) return;
    const oscChirho = audioCtxChirho.createOscillator();
    const gainChirho = audioCtxChirho.createGain();

    oscChirho.type = typeChirho;
    oscChirho.frequency.setValueAtTime(freqChirho, audioCtxChirho.currentTime);

    gainChirho.gain.setValueAtTime(0.1, audioCtxChirho.currentTime);
    gainChirho.gain.exponentialRampToValueAtTime(0.001, audioCtxChirho.currentTime + durationChirho);

    oscChirho.connect(gainChirho);
    gainChirho.connect(audioCtxChirho.destination);

    oscChirho.start();
    oscChirho.stop(audioCtxChirho.currentTime + durationChirho);
}

function playSuccessSoundChirho() {
    playToneChirho(523.25, ''sine'', 0.1); // C5
    setTimeout(() => playToneChirho(659.25, ''sine'', 0.2), 100); // E5
    setTimeout(() => playToneChirho(783.99, ''sine'', 0.4), 200); // G5
}

function playErrorSoundChirho() {
    playToneChirho(150, ''sawtooth'', 0.3);
}

// --- GAME LOGIC CHIRHO ---

function shuffleArrayChirho(arrayChirho) {
    for (let iChirho = arrayChirho.length - 1; iChirho > 0; iChirho--) {
        const jChirho = Math.floor(Math.random() * (iChirho + 1));
        // Array destructuring uses the newly named loop variables
        [arrayChirho[iChirho], arrayChirho[jChirho]] = [arrayChirho[jChirho], arrayChirho[iChirho]];
    }
    return arrayChirho;
}

function generateAvatarSvgChirho(seedNameChirho, colorChirho) {
    // Simple SVG avatar generation
    return `
        <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
            <circle cx="50" cy="50" r="45" fill="${colorChirho}" stroke="#2c3e50" stroke-width="2"/>
            <circle cx="50" cy="40" r="15" fill="#ecf0f1"/>
            <path d="M20 80 Q50 95 80 80 Q80 100 20 100 Z" fill="#34495e"/>
            <circle cx="43" cy="38" r="2" fill="#333"/>
            <circle cx="57" cy="38" r="2" fill="#333"/>
            <path d="M45 48 Q50 52 55 48" stroke="#333" stroke-width="1" fill="none"/>
        </svg>
    `;
}

function generateOptionsChirho(correctVerseChirho) {
    // Get 6 random wrong answers
    const wrongOptionsChirho = shuffleArrayChirho([...versesPoolChirho]).slice(0, 6);
    const allOptionsChirho = shuffleArrayChirho([...wrongOptionsChirho, correctVerseChirho]);
    return allOptionsChirho;
}

function renderCaseChirho() {
    const currentCaseChirho = casesDataChirho[currentCaseIndexChirho];

    // Update Progress
    const progressPctChirho = ((currentCaseIndexChirho) / casesDataChirho.length) * 100;
    progressBarChirho.style.width = `${progressPctChirho}%`;

    // Render Character
    avatarContainerChirho.innerHTML = generateAvatarSvgChirho(currentCaseChirho.nameChirho, currentCaseChirho.colorChirho);
    nameDisplayChirho.textContent = currentCaseChirho.nameChirho;
    dialogueDisplayChirho.textContent = `"${currentCaseChirho.situationChirho}"`;

    // Render Options
    optionsContainerChirho.innerHTML = '''';
    const optionsChirho = generateOptionsChirho(currentCaseChirho.correctVerseChirho);

    optionsChirho.forEach(optChirho => {
        const btnChirho = document.createElement(''button'');
        btnChirho.className = ''verse-btn-chirho'';
        btnChirho.innerHTML = `
            <span class="verse-ref-chirho">${optChirho.refChirho}</span>
            <span class="verse-text-chirho">${optChirho.textChirho}</span>
        `;

        btnChirho.onclick = () => handleAnswerChirho(btnChirho, optChirho, currentCaseChirho.correctVerseChirho);
        optionsContainerChirho.appendChild(btnChirho);
    });
}

function handleAnswerChirho(btnElementChirho, selectedOptChirho, correctOptChirho) {
    // Prevent double clicking
    const allBtnsChirho = document.querySelectorAll(''.verse-btn-chirho'');
    // Renamed the loop variable ''b'' to ''btnChirho''
    allBtnsChirho.forEach(btnChirho => btnChirho.disabled = true);

    if (selectedOptChirho.refChirho === correctOptChirho.refChirho) {
        // Correct
        scoreChirho++;
        btnElementChirho.classList.add(''correct-anim-chirho'');
        playSuccessSoundChirho();
    } else {
        // Incorrect
        btnElementChirho.classList.add(''wrong-anim-chirho'');
        playErrorSoundChirho();

        // Highlight correct answer
        // Renamed the loop variable ''b'' to ''btnChirho''
        allBtnsChirho.forEach(btnChirho => {
            if (btnChirho.innerText.includes(correctOptChirho.refChirho)) {
                setTimeout(() => btnChirho.classList.add(''correct-anim-chirho''), 200);
            }
        });
    }

    // Next Level Delay
    setTimeout(() => {
        currentCaseIndexChirho++;
        if (currentCaseIndexChirho < casesDataChirho.length) {
            renderCaseChirho();
        } else {
            endGameChirho();
        }
    }, 2000);
}

function startGameChirho() {
    initAudioChirho();
    currentCaseIndexChirho = 0;
    scoreChirho = 0;
    startScreenChirho.classList.remove(''active-chirho'');
    endScreenChirho.classList.remove(''active-chirho'');
    gameScreenChirho.classList.add(''active-chirho'');
    renderCaseChirho();
}

function endGameChirho() {
    gameScreenChirho.classList.remove(''active-chirho'');
    endScreenChirho.classList.add(''active-chirho'');
    finalScoreDisplayChirho.textContent = `${scoreChirho} / ${casesDataChirho.length}`;

    if (scoreChirho === casesDataChirho.length) {
        finalMessageDisplayChirho.textContent = "Excellent! \"Well done, good and faithful servant.\"";
    } else if (scoreChirho > 8) {
        finalMessageDisplayChirho.textContent = "Great job! You offered much wisdom today.";
    } else {
        finalMessageDisplayChirho.textContent = "Keep studying the Word, so you may be ready to give an answer.";
    }
}

// --- EVENT LISTENERS CHIRHO ---

startBtnChirho.addEventListener(''click'', startGameChirho);
restartBtnChirho.addEventListener(''click'', startGameChirho);

</script>
</body>
</html>
EOF
echo "✅ Created ''The Scripture Counselor'' game for session 2 at: $TARGET_HTML_FILE_CHIRHO"


echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week15-session2-chirho.sh',
  152,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 15 Session 3 (payload-week15-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '1rvN1fo0Xaxfijvo7wu-O',
  'Week 15 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 15, Session 3',
  '1.0.0',
  '#!/bin/bash
# "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." (John 3:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 15, Session 3
# This script creates "The Narrow Path" Canvas Challenge.

# --- Output initial messages ---
echo "Payload for Week 15 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-15-chirho/session-3-chirho"
TARGET_GAME_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 3: "The Narrow Path" Canvas Game =================================
# ==============================================================================

# --- Create the Game File ---
echo "Creating game file at $TARGET_GAME_FILE_CHIRHO..."

cat << ''EOF'' > "$TARGET_GAME_FILE_CHIRHO"
<!--
# For God so loved the world that he gave his only begotten Son, that whoever believes in him should not perish but have eternal life.
-->
<!--
# For God so loved the world that he gave his only begotten Son, that whoever believes in him should not perish but have eternal life.
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Narrow Path Challenge</title>
    <style>
        /* CSS Classes use kebab-case + -chirho suffix */
        body {
            font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #2c3e50;
            color: #ecf0f1;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
        }

        h1 { margin-bottom: 10px; }

        #game-container-chirho {
            position: relative;
            box-shadow: 0 0 20px rgba(0,0,0,0.5);
            border: 4px solid #ecf0f1;
        }

        canvas {
            background-color: #34495e;
            display: block;
        }

        .instruction-panel-chirho {
            margin-top: 20px;
            background: rgba(0,0,0,0.3);
            padding: 15px;
            border-radius: 8px;
            text-align: center;
            max-width: 600px;
        }

        .code-hint-chirho {
            font-family: ''Courier New'', monospace;
            background: #222;
            padding: 2px 6px;
            border-radius: 4px;
            color: #f1c40f;
        }
    </style>
</head>
<body>

    <h1>The Narrow Path</h1>

    <div id="game-container-chirho">
        <canvas id="game-canvas-chirho" width="600" height="400"></canvas>
    </div>

    <div class="instruction-panel-chirho">
        <p><strong>Use Arrow Keys</strong> to move the white Pilgrim block to the Golden Gate on the right.</p>
        <p id="status-msg-chirho" style="color: #e74c3c; font-weight: bold;">
            ⚠️ LESSON MODE:
            The Pilgrim is too "puffed up" and too much of a sluggard,
            to fit the Narrow Path.
        </p>
    </div>

<script>
/**
 * Identifier Naming Convention: Chirho Suffix
 * ALL identifiers are suffixed with "Chirho"
 */

// --- CONFIGURATION & SETUP CHIRHO ---

const canvasChirho = document.getElementById(''game-canvas-chirho'');
const ctxChirho = canvasChirho.getContext(''2d'');
const statusMsgChirho = document.getElementById(''status-msg-chirho'');

// --- GAME VARIABLES CHIRHO ---

// TASK : HUMILITY
// Currently, the player is size 60. This represents "Pride" or being "Puffed Up".
// It is too big to fit through the narrow gaps (which are 40px wide).
// CHANGE THIS VALUE to 20 to represent "Humility".
let playerSizeChirho = 40;

let playerXChirho = 50;
let playerYChirho = 200;
let playerSpeedChirho = 3;
let gameRunningChirho = true;
let frameIdChirho = 0;

// Input state
const keysChirho = {
    ArrowUp: false,
    ArrowDown: false,
    ArrowLeft: false,
    ArrowRight: false
};

// Define the Goal (The Narrow Gate)
const goalChirho = {
    xChirho: 550,
    yChirho: 150,
    wChirho: 30,
    hChirho: 100,
    colorChirho: ''#f1c40f'' // Gold
};

// Obstacles (The Distractions/Trials)
const obstaclesChirho = [];
const obstacleCountChirho = 6;
const gapSizeChirho = 45; // The gap is 45px. A 60px player won''t fit!

// Initialize Obstacles
for (let iChirho = 0; iChirho < obstacleCountChirho; iChirho++) {
    obstaclesChirho.push({
        xChirho: 150 + (iChirho * 70),
        yChirho: 0,
        wChirho: 20,
        hChirho: 0, // calculated dynamically below
        speedChirho: 1 + (iChirho * 0.5),
        directionChirho: 1,
        gapYChirho: Math.random() * 300 // The vertical position of the gap
    });
}

// --- INPUT HANDLING CHIRHO ---

window.addEventListener(''keydown'', (eChirho) => {
    if(keysChirho.hasOwnProperty(eChirho.key)) keysChirho[eChirho.key] = true;
});

window.addEventListener(''keyup'', (eChirho) => {
    if(keysChirho.hasOwnProperty(eChirho.key)) keysChirho[eChirho.key] = false;
});

// --- GAME FUNCTIONS CHIRHO ---

function updateChirho() {
    if (!gameRunningChirho) return;

    // Move Player
    if (keysChirho.ArrowUp && playerYChirho > 0) playerYChirho -= playerSpeedChirho;
    if (keysChirho.ArrowDown && playerYChirho < canvasChirho.height - playerSizeChirho) playerYChirho += playerSpeedChirho;
    if (keysChirho.ArrowLeft && playerXChirho > 0) playerXChirho -= playerSpeedChirho;
    if (keysChirho.ArrowRight && playerXChirho < canvasChirho.width - playerSizeChirho) playerXChirho += playerSpeedChirho;

    // Update Obstacles
    obstaclesChirho.forEach(obsChirho => {
        obsChirho.gapYChirho += obsChirho.speedChirho * obsChirho.directionChirho;

        // Bounce gap up and down
        if (obsChirho.gapYChirho > canvasChirho.height - gapSizeChirho - 20 || obsChirho.gapYChirho < 20) {
            obsChirho.directionChirho *= -1;
        }
    });

    // Check Win Condition
    if (
        playerXChirho < goalChirho.xChirho + goalChirho.wChirho &&
        playerXChirho + playerSizeChirho > goalChirho.xChirho &&
        playerYChirho < goalChirho.yChirho + goalChirho.hChirho &&
        playerYChirho + playerSizeChirho > goalChirho.yChirho
    ) {
        gameRunningChirho = false;
        drawWinScreenChirho();
        return;
    }

    // The Bible says "Be sober, be vigilant." (1 Peter 5:8).

    if (checkCollisionsChirho()) {
        resetGameChirho();
    }
}

function checkCollisionsChirho() {
    for (let obsChirho of obstaclesChirho) {
        // Define the top wall of the obstacle
        let topWallRect = {
            x: obsChirho.xChirho,
            y: 0,
            w: obsChirho.wChirho,
            h: obsChirho.gapYChirho
        };

        // Define the bottom wall of the obstacle
        let bottomWallRect = {
            x: obsChirho.xChirho,
            y: obsChirho.gapYChirho + gapSizeChirho,
            w: obsChirho.wChirho,
            h: canvasChirho.height - (obsChirho.gapYChirho + gapSizeChirho)
        };


        if (rectIntersectChirho(playerXChirho, playerYChirho, playerSizeChirho, playerSizeChirho, topWallRect) ||
            rectIntersectChirho(playerXChirho, playerYChirho, playerSizeChirho, playerSizeChirho, bottomWallRect)) {
            return true; // Hit!
        }
        // --- END UNCOMMENT BLOCK ---
    }
    return false;
}

function rectIntersectChirho(px, py, ps, ps2, rect) {
    return (px < rect.x + rect.w && px + ps > rect.x &&
            py < rect.y + rect.h && py + ps > rect.y);
}

function drawChirho() {
    if (!gameRunningChirho) return;

    // Clear Screen
    ctxChirho.clearRect(0, 0, canvasChirho.width, canvasChirho.height);

    // Draw Goal (The Narrow Gate)
    ctxChirho.fillStyle = goalChirho.colorChirho;
    ctxChirho.fillRect(goalChirho.xChirho, goalChirho.yChirho, goalChirho.wChirho, goalChirho.hChirho);

    // Draw Goal Text
    ctxChirho.fillStyle = "#fff";
    ctxChirho.font = "10px Arial";
    ctxChirho.fillText("LIFE", goalChirho.xChirho + 4, goalChirho.yChirho + 50);

    // Draw Obstacles (Walls)
    ctxChirho.fillStyle = "#e74c3c"; // Red for danger
    obstaclesChirho.forEach(obsChirho => {
        // Top part
        ctxChirho.fillRect(obsChirho.xChirho, 0, obsChirho.wChirho, obsChirho.gapYChirho);
        // Bottom part
        ctxChirho.fillRect(obsChirho.xChirho, obsChirho.gapYChirho + gapSizeChirho, obsChirho.wChirho, canvasChirho.height);
    });

    // Draw Player (The Pilgrim)
    ctxChirho.fillStyle = "#ecf0f1"; // White for purity
    ctxChirho.fillRect(playerXChirho, playerYChirho, playerSizeChirho, playerSizeChirho);
}

function gameLoopChirho() {
    updateChirho();
    drawChirho();
    if (gameRunningChirho) {
        frameIdChirho = requestAnimationFrame(gameLoopChirho);
    }
}

function resetGameChirho() {
    // Flash red
    ctxChirho.fillStyle = "rgba(231, 76, 60, 0.5)";
    ctxChirho.fillRect(0, 0, canvasChirho.width, canvasChirho.height);

    // Reset position
    playerXChirho = 50;
    playerYChirho = 200;
}

function drawWinScreenChirho() {
    ctxChirho.fillStyle = "rgba(46, 204, 113, 0.9)";
    ctxChirho.fillRect(0, 0, canvasChirho.width, canvasChirho.height);

    ctxChirho.fillStyle = "white";
    ctxChirho.font = "30px Arial";
    ctxChirho.textAlign = "center";
    ctxChirho.fillText("Narrow Gate Entered!", canvasChirho.width/2, canvasChirho.height/2 - 20);

    ctxChirho.font = "16px Arial";
    ctxChirho.fillText("Matthew 7:14 - ...narrow is the gate... which leads to life.", canvasChirho.width/2, canvasChirho.height/2 + 20);

    statusMsgChirho.style.color = "#2ecc71";
    statusMsgChirho.innerHTML = "Running well! You have humbled yourself and stayed vigilant.";
}

// Start
gameLoopChirho();

</script>
</body>
</html>
EOF
echo "✅ Created ''The Narrow Path'' challenge at: $TARGET_GAME_FILE_CHIRHO"

echo "---"
echo "Payload complete. Be vigilant!"
',
  'bash',
  'bash payload-week15-session3-chirho.sh',
  153,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 16 Session 1 (payload-week16-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'wTJb3GWrfnC_elKR0ayQh',
  'Week 16 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 16, Session 1',
  '1.0.0',
  '#!/bin/bash
# "But the Comforter, which is the Holy Ghost, whom the Father will send in my name, he shall teach you all things..." (John 14:26 KJV)
# Payload for Sonshine Programming Class Chirho: Week 16, Session 1
# This script creates the instructions for using the Grok AI CLI to build Project 2.

# --- Output initial messages ---
echo "Payload for Week 16 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-16-chirho/session-1-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 1: The Helper (AI Coding Assistant) ==============================
# ==============================================================================

# --- Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - The Helper</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; color: #d63384; word-break: break-all; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        .step-chirho { margin-bottom: 30px; border-left: 4px solid #3b82f6; padding-left: 20px; }
        .warning-chirho { background-color: #fff7ed; border: 1px solid #fdba74; padding: 10px; border-radius: 5px; color: #c2410c; font-size: 0.9em; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>The Helper: Building Project 2 🤖</h1>
        <p>Hallelujah! We have laid the foundation for our Bible Commentary App (Project 2). Now, we will call upon a "helper"—an AI coding assistant—to help us build the walls and the roof.</p>
        <p class="verse-chirho">"But the Comforter, which is the Holy Ghost, whom the Father will send in my name, he shall teach you all things..." - John 14:26</p>
        <p>The Holy Spirit is our true Helper and Comforter. While AI is obviously not the Holy Spirit, let us be reminded of Him as this tool helps us build our projects. Today, we will use the <strong>Grok CLI</strong> to implement our project automatically!</p>

        <h2>Instructions</h2>

        <div class="step-chirho">
            <h3>Step 1: Set the Key 🔑</h3>
            <p>First, we need to give our tool the authority to work. Copy and run this command in your terminal:</p>
            <pre><code>export GROK_API_KEY=YOUR_GROK_API_KEY_HERE</code></pre>
        </div>

        <div class="step-chirho">
            <h3>Step 2: Go to the Project 📂</h3>
            <p>Move into the folder where we set up the boilerplate files for Project 2:</p>
            <pre><code>cd Downloads/cp-chirho/project-2-chirho</code></pre>
        </div>

        <div class="step-chirho">
            <h3>Step 3: Summon the Helper 🚀</h3>
            <p>Run the AI tool using Bun:</p>
            <pre><code>bunx @vibe-kit/grok-cli</code></pre>
        </div>

        <div class="step-chirho">
            <h3>Step 4: The Request 🗣️</h3>
            <p>When the tool asks what you want to do, paste this exact command:</p>
            <pre><code>Please implement the project described in README.md using bun, hallelujah</code></pre>
        </div>

        <div class="step-chirho">
            <h3>Step 5: Accept and Build 🏗️</h3>
            <p>The AI will think for a moment and then propose changes to your files.</p>
            <ul>
                <li>It will ask for permission to apply changes. <strong>Always accept (type ''y'' or press Enter).</strong></li>
                <li>It should modify <code>server-chirho.js</code> and the client files to make them work!</li>
            </ul>
            <p class="warning-chirho"><strong>Tip:</strong> If the text stops scrolling or looks stuck, try pressing any letter key on your keyboard to "wake it up."</p>
        </div>

        <div class="step-chirho">
            <h3>Step 6: Run It! ▶️</h3>
            <p>Once the AI is finished, run your server :</p>
            <pre><code>bun run server-chirho.js</code></pre>
            <p>Open <a href="http://localhost:8000" target="_blank">http://localhost:8000</a> and see your creation!</p>
            <p>Note, it should be the above though the AI might have done something else and told you at the end.</p>
        </div>

        <hr>

        <h3>Going Further (Bonus)</h3>
        <p>If it works, praise the Lord! If you want to make it look nicer, you can ask the AI again. But be careful—it might break things!</p>
        <p><em>Pro Tip: You can ask the AI to "initialize a git repository" before you make additional changes so you can save your progress at each step.</em></p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week16-session1-chirho.sh',
  161,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 16 Session 2 (payload-week16-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'eFtY-3H9-jsM59058PTot',
  'Week 16 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 16, Session 2',
  '1.0.0',
  '#!/bin/bash
# "Let no man despise thy youth; but be thou an example of the believers..." (1 Timothy 4:12 KJV)
# Payload for Sonshine Programming Class Chirho: Week 16, Session 2
# This script sets up the environment for Dayron''s guest lecture.

# --- Output initial messages ---
echo "Payload for Week 16 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-16-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 2: Guest Instructor Dayron =======================================
# ==============================================================================

# --- Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guest Instructor: Dayron</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        .special-announcement { background-color: #f0fdf4; border: 2px solid #22c55e; padding: 20px; border-radius: 10px; margin-bottom: 30px; text-align: center; }
        .coin-alert { font-size: 1.2em; font-weight: bold; color: #15803d; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; color: #d63384; word-break: break-all; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        .step-chirho { margin-bottom: 30px; border-left: 4px solid #3b82f6; padding-left: 20px; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Welcome to Session 2! 🎓</h1>
        
        <div class="special-announcement">
            <h2>Guest Instructor: Dayron</h2>
            <p>Hallelujah! Today is a special day. <strong>Dayron</strong> will be teaching the class (I will assist as needed).</p>
            <p>He will help you all get up to speed and will come up with a fun task for you to complete.</p>
            <p class="coin-alert">🏆 Dayron has been given 1 Quest Coin to award to whoever completes his task first!</p>
        </div>

        <p class="verse-chirho">"Let no man despise thy youth; but be thou an example of the believers..." - 1 Timothy 4:12</p>
        
        <h2>Dayron''s AI Setup Instructions</h2>
        <p>Dayron may ask you to use the AI Helper for his task. Remember, the Holy Spirit is our true Helper and Guide; let us be reminded of Him as we use these digital tools to build. And may the Word of God be a lamp to our feet and a light to our path (Psalm 119:105).</p>

        <div class="step-chirho">
            <h3>Step 1: Set the AI Key 🔑</h3>
            <p>Copy and run this command in your terminal to enable the AI tool:</p>
            <pre><code>export GROK_API_KEY=YOUR_GROK_API_KEY_HERE</code></pre>
        </div>

        <div class="step-chirho">
            <h3>Step 2: Go to Today''s Directory 📂</h3>
            <p>We want to work in today''s folder so our new files are created here:</p>
            <pre><code>cd Downloads/cp-chirho/week-16-chirho/session-2-chirho</code></pre>
        </div>

        <div class="step-chirho">
            <h3>Step 3: Launch the AI Coding tool 🚀</h3>
            <p>If Dayron asks you to create an AI project, run this command:</p>
            <pre><code>bunx @vibe-kit/grok-cli</code></pre>
        </div>

        <p><em>Listen closely to Dayron for your mission instructions. And work with him to get up to speed, praise Jesus!</em></p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week16-session2-chirho.sh',
  162,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 16 Session 3 (payload-week16-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'br7iVRJaz-FMM8psIq1kD',
  'Week 16 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 16, Session 3',
  '1.0.0',
  '#!/bin/bash
# "Study to shew thyself approved unto God... rightly dividing the word of truth." (2 Timothy 2:15 KJV)
# Payload for Sonshine Programming Class Chirho: Week 16, Session 3
# This script creates the "Rightly Dividing" word puzzle game.

# --- Output initial messages ---
echo "Payload for Week 16 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-16-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_GAME_FILE_CHIRHO="$SESSION_DIR_CHIRHO/puzzle-chirho.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 3: "Rightly Dividing" Puzzle =====================================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Quick Warm-up</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        code { font-family: ''Courier New'', Courier, monospace; color: #d63384; }
        pre { background-color: #1e293b; color: #cbd5e1; padding: 15px; border-radius: 8px; white-space: pre-wrap; word-wrap: break-word; }
        .mission-brief { background-color: #ecfccb; border: 2px solid #84cc16; padding: 15px; border-radius: 8px; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Warm-up: Rightly Dividing the Word 🧩</h1>
        <p>Hallelujah! Before we continue making sure the class is up to speed in quests and projects, let''s do a quick, 5-minute warm-up exercise.</p>
        <p class="verse-chirho">"Study to shew thyself approved unto God, a workman that needeth not to be ashamed, rightly dividing the word of truth." - 2 Timothy 2:15</p>
        <p>We have a game file, <code>puzzle-chirho.html</code>, that scrambles a sentence for you to reassemble. But it needs your input!</p>

        <div class="mission-brief">
            <strong>YOUR MISSION (5 Minutes):</strong>
            <p>Open <code>puzzle-chirho.html</code> in your code editor and complete two quick tasks:</p>
            <ol>
                <li><strong>Personalize it:</strong> Find the variable <code>verseTextChirho</code>. Change the placeholder text to your favorite Bible verse!</li>
                <li><strong>Fix the Victory:</strong> Find the <code>handleVictoryChirho</code> function. It''s currently empty! Uncomment the code inside it so the game actually congratulates you when you win.</li>
            </ol>
        </div>

        <h2>How to Run</h2>
        <p>This is a simple client-side file. Just click <a href="puzzle-chirho.html">puzzle-chirho.html</a> to open it in your browser!</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the Puzzle Game file ---
if [[ ! -f "$TARGET_GAME_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_GAME_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rightly Dividing</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.6.0/dist/confetti.browser.min.js"></script>
    <style>
        body { font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif; background-color: #fdfbf7; display: flex; flex-direction: column; align-items: center; min-height: 100vh; margin: 0; padding: 20px; }
        h1 { color: #8b4513; margin-bottom: 10px; }
        p { color: #666; margin-bottom: 30px; }
        #game-board-chirho { width: 100%; max-width: 800px; display: flex; flex-direction: column; gap: 20px; }

        .area-label { font-weight: bold; color: #8b4513; margin-bottom: 5px; }

        #source-area-chirho, #target-area-chirho {
            min-height: 100px;
            padding: 20px;
            border-radius: 10px;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            align-content: flex-start;
            transition: background-color 0.3s;
        }

        #source-area-chirho { background-color: #e2e8f0; border: 2px dashed #cbd5e1; }
        #target-area-chirho { background-color: #fff; border: 2px solid #8b4513; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }

        .word-chip-chirho {
            background-color: #fff;
            border: 2px solid #3b82f6;
            color: #1e3a8a;
            padding: 8px 16px;
            border-radius: 20px;
            cursor: pointer;
            font-size: 1.1em;
            user-select: none;
            transition: transform 0.1s, background-color 0.2s;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .word-chip-chirho:hover { transform: translateY(-2px); background-color: #eff6ff; }
        .word-chip-chirho:active { transform: translateY(0); }

        .word-placed { background-color: #8b4513; border-color: #8b4513; color: white; }

        #reset-btn-chirho { margin-top: 20px; padding: 10px 20px; font-size: 1em; background-color: #ef4444; color: white; border: none; border-radius: 5px; cursor: pointer; }
        #reset-btn-chirho:hover { background-color: #dc2626; }
    </style>
</head>
<body>

    <h1>Rightly Dividing the Word 📖</h1>
    <p>Click the words in the correct order to assemble the verse.</p>

    <div id="game-board-chirho">
        <div>
            <div class="area-label">Scrambled Words:</div>
            <div id="source-area-chirho"></div>
        </div>

        <div>
            <div class="area-label">Your Answer:</div>
            <div id="target-area-chirho"></div>
        </div>
    </div>

    <button id="reset-btn-chirho" onclick="initGameChirho()">Reset Puzzle</button>

    <script>
        // "For God so loved the world..." (John 3:16 KJV)

        const sourceAreaChirho = document.getElementById(''source-area-chirho'');
        const targetAreaChirho = document.getElementById(''target-area-chirho'');

        // --- TASK 1: CHANGE THIS STRING! ---
        // Change this to your favorite Bible verse.
        // Example: "Jesus wept" or "In the beginning God created the heaven and the earth"
        const verseTextChirho = "Replace this string with your favorite Bible verse";
        // -----------------------------------

        let correctWordsChirho = [];
        let currentGuessChirho = [];
        const synthChirho = new Tone.Synth().toDestination();

        function initGameChirho() {
            // Clear areas
            sourceAreaChirho.innerHTML = '''';
            targetAreaChirho.innerHTML = '''';
            currentGuessChirho = [];
            targetAreaChirho.style.backgroundColor = ''#fff'';

            // Clean and split text
            // Remove punctuation for simplicity in matching, or keep it if you want the challenge!
            // We''ll keep it simple: split by space.
            correctWordsChirho = verseTextChirho.trim().split(/\s+/);

            // Create a copy to shuffle
            const shuffledWords = [...correctWordsChirho];
            // Fisher-Yates shuffle
            for (let i = shuffledWords.length - 1; i > 0; i--) {
                const j = Math.floor(Math.random() * (i + 1));
                [shuffledWords[i], shuffledWords[j]] = [shuffledWords[j], shuffledWords[i]];
            }

            // Render source words
            shuffledWords.forEach(word => {
                const chip = document.createElement(''div'');
                chip.className = ''word-chip-chirho'';
                chip.textContent = word;
                chip.onclick = () => handleWordClickChirho(chip, word);
                sourceAreaChirho.appendChild(chip);
            });
        }

        function handleWordClickChirho(chipElement, wordText) {
            if (Tone.context.state !== ''running'') Tone.start();

            // Move word to target
            targetAreaChirho.appendChild(chipElement);
            chipElement.classList.add(''word-placed'');

            // Add to guess array
            currentGuessChirho.push(wordText);

            // Play sound
            synthChirho.triggerAttackRelease("C5", "16n");

            // Check if full sentence is formed
            if (currentGuessChirho.length === correctWordsChirho.length) {
                checkWinChirho();
            }
        }

        function checkWinChirho() {
            // Join arrays to compare string vs string
            const guessString = currentGuessChirho.join('' '');
            const correctString = correctWordsChirho.join('' '');

            if (guessString === correctString) {
                targetAreaChirho.style.backgroundColor = ''#dcfce7''; // Light green
                handleVictoryChirho();
            } else {
                targetAreaChirho.style.backgroundColor = ''#fee2e2''; // Light red
                synthChirho.triggerAttackRelease("A2", "8n"); // Error sound
                setTimeout(() => alert("Not quite right. Try resetting!"), 100);
            }
        }

        function handleVictoryChirho() {
            // --- TASK 2: UNCOMMENT THE LINES BELOW! ---
            // Remove the "//" from the start of the lines to enable the victory code.

            // console.log("Victory! Hallelujah!");
            // confetti({ particleCount: 150, spread: 70, origin: { y: 0.6 } });
            // synthChirho.triggerAttackRelease("C4", "8n", Tone.now());
            // synthChirho.triggerAttackRelease("E4", "8n", Tone.now() + 0.1);
            // synthChirho.triggerAttackRelease("G4", "8n", Tone.now() + 0.2);
            // synthChirho.triggerAttackRelease("C5", "4n", Tone.now() + 0.3);
            // setTimeout(() => alert("Victory! Hallelujah!"), 1000);

            // ------------------------------------------
        }

        // Start game on load
        window.onload = initGameChirho;

    </script>
</body>
</html>
EOF
    echo "✅ Created puzzle game for session 3."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week16-session3-chirho.sh',
  163,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 17 Session 1 (payload-week17-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'AZQSWRRwwU8Cpzp8ebyvl',
  'Week 17 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 17, Session 1',
  '1.0.0',
  '#!/bin/bash
# "It is the glory of God to conceal a thing: but the honour of kings is to search out a matter." (Proverbs 25:2 KJV)
# Payload for Sonshine Programming Class Chirho: Week 17, Session 1
# This script creates the "Linux Code Breaker" interactive challenge.

# --- Output initial messages ---
echo "Payload for Week 17 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-17-chirho/session-1-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_CLUE_FILE_CHIRHO="$SESSION_DIR_CHIRHO/clue-chirho.txt"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 1: "Operation: Decrypt the Scroll" ===============================
# ==============================================================================

# --- 1. Create the Interactive HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Operation: Decrypt the Scroll</title>
    <style>
        body { font-family: ''Courier New'', Courier, monospace; background-color: #111; color: #0f0; line-height: 1.6; padding: 20px; margin: 0; }
        #container-chirho { max-width: 900px; margin: 0 auto; background-color: #222; border: 2px solid #0f0; border-radius: 10px; padding: 40px; box-shadow: 0 0 20px rgba(0, 255, 0, 0.2); }
        h1 { color: #f6e05e; text-align: center; text-transform: uppercase; border-bottom: 1px dashed #0f0; padding-bottom: 20px; }
        p.verse-chirho { text-align: center; font-style: italic; color: #ccc; margin-bottom: 30px; border: 1px solid #444; padding: 10px; }
        code { color: #f6e05e; font-weight: bold; }
        pre { background-color: #000; color: #fff; padding: 15px; border-radius: 5px; border-left: 4px solid #0f0; overflow-x: auto; margin: 10px 0; }

        .step-chirho { margin-bottom: 25px; padding: 20px; background: rgba(255,255,255,0.03); border: 1px solid #333; border-radius: 8px; transition: all 0.3s; opacity: 0.5; pointer-events: none; }
        .step-chirho.active-chirho { opacity: 1; border-color: #0f0; background: rgba(0, 255, 0, 0.05); pointer-events: auto; }
        .step-chirho.completed-chirho { border-color: #f6e05e; opacity: 0.7; }

        input[type="text"] { width: 100%; padding: 10px; background: #000; border: 1px solid #555; color: #fff; font-family: ''Courier New'', monospace; font-size: 1.1em; margin-top: 10px; box-sizing: border-box; }
        input[type="text"]:focus { outline: none; border-color: #0f0; }

        .status-msg { font-weight: bold; margin-top: 5px; font-size: 0.9em; min-height: 1.2em; }
        .correct { color: #0f0; }
        .incorrect { color: #f00; }

        .prize-alert { text-align: center; font-size: 1.2em; color: #f6e05e; font-weight: bold; margin-top: 30px; border: 2px solid #f6e05e; padding: 10px; display: none; animation: pulse 2s infinite; }

        @keyframes pulse { 0% { transform: scale(1); } 50% { transform: scale(1.05); } 100% { transform: scale(1); } }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Operation: Decrypt the Scroll 📜</h1>
        <p class="verse-chirho">"It is the glory of God to conceal a thing: but the honour of kings is to search out a matter." - Proverbs 25:2</p>

        <p>Hallelujah! We have intercepted a coded message. You must use your Linux tools to peel back the layers of encryption one by one. Copy the output from your terminal into the boxes below to verify your progress!</p>

        <!-- STEP 1 -->
        <div id="step1-chirho" class="step-chirho active-chirho">
            <h3>Step 1: Read the Clue 📄</h3>
            <p>The scrambled message is in <code>clue-chirho.txt</code>. Print it to the screen.</p>
            <pre><code>cat clue-chirho.txt</code></pre>
            <p>Paste the output here:</p>
            <input type="text" id="input1-chirho" placeholder="Paste result..." autocomplete="off">
            <div id="msg1-chirho" class="status-msg"></div>
        </div>

        <!-- STEP 2 -->
        <div id="step2-chirho" class="step-chirho">
            <h3>Step 2: Repair the Damage (sed) 🔧</h3>
            <p>The message is corrupted! Replace <strong>_</strong> with <strong>Q</strong> and <strong>~</strong> with <strong>g</strong>.</p>
            <pre><code>cat clue-chirho.txt | sed ''s/_/Q/g; s/~/g/g''</code></pre>
            <p>Paste the repaired text here:</p>
            <input type="text" id="input2-chirho" placeholder="Paste result..." autocomplete="off">
            <div id="msg2-chirho" class="status-msg"></div>
        </div>

        <!-- STEP 3 -->
        <div id="step3-chirho" class="step-chirho">
            <h3>Step 3: Decode Base64 📦</h3>
            <p>Now that it''s fixed, decode the Base64 layer.</p>
            <pre><code>cat clue-chirho.txt | sed ''s/_/Q/g; s/~/g/g'' | base64 -d</code></pre>
            <p>Paste the decoded text here (it might look like nonsense):</p>
            <input type="text" id="input3-chirho" placeholder="Paste result..." autocomplete="off">
            <div id="msg3-chirho" class="status-msg"></div>
        </div>

        <!-- STEP 4 -->
        <div id="step4-chirho" class="step-chirho">
            <h3>Step 4: Rotate the Alphabet (tr) 🔄</h3>
            <p>It''s still encrypted with ROT13! Shift the letters back.</p>
            <pre><code>cat clue-chirho.txt | sed ''s/_/Q/g; s/~/g/g'' | base64 -d | tr ''A-Za-z'' ''N-ZA-Mn-za-m''</code></pre>
            <p>Paste the final citation here:</p>
            <input type="text" id="input4-chirho" placeholder="Paste result..." autocomplete="off">
            <div id="msg4-chirho" class="status-msg"></div>
        </div>

        <div id="final-reward-chirho" class="prize-alert">
            🎉 HALLELUJAH! MESSAGE DECRYPTED! 🎉<br>
            Open your Bible to that verse and raise your hand for a Quest Coin!
        </div>
    </div>

    <script>
        // "For God so loved the world..." (John 3:16 KJV)

        // The expected answers
        const ans1 = "_2ViaXJlb2Y~MjU6M~==";
        const ans2 = "Q2ViaXJlb2YgMjU6Mg==";
        const ans3 = "Cebireof 25:2";
        const ans4 = "Proverbs 25:2";

        function checkInput(inputId, msgId, expected, nextStepId) {
            const inputEl = document.getElementById(inputId);
            const msgEl = document.getElementById(msgId);
            const currentStepEl = inputEl.parentElement;

            inputEl.addEventListener(''input'', () => {
                const val = inputEl.value.trim();
                if (val === expected) {
                    msgEl.textContent = "✅ Correct!";
                    msgEl.className = "status-msg correct";
                    inputEl.disabled = true;
                    currentStepEl.classList.add(''completed-chirho'');

                    if (nextStepId) {
                        const nextEl = document.getElementById(nextStepId);
                        nextEl.classList.add(''active-chirho'');
                        // Focus on the next input for convenience
                        const nextInput = nextEl.querySelector(''input'');
                        if (nextInput) nextInput.focus();
                    } else {
                        // Final step done!
                        document.getElementById(''final-reward-chirho'').style.display = ''block'';
                    }
                } else {
                    if (val.length > 0) {
                        msgEl.textContent = "❌ Not quite right. Check your command.";
                        msgEl.className = "status-msg incorrect";
                    } else {
                        msgEl.textContent = "";
                    }
                }
            });
        }

        // Initialize checks
        checkInput(''input1-chirho'', ''msg1-chirho'', ans1, ''step2-chirho'');
        checkInput(''input2-chirho'', ''msg2-chirho'', ans2, ''step3-chirho'');
        checkInput(''input3-chirho'', ''msg3-chirho'', ans3, ''step4-chirho'');
        checkInput(''input4-chirho'', ''msg4-chirho'', ans4, null); // Null means end of game
    </script>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the Clue File ---
if [[ ! -f "$TARGET_CLUE_FILE_CHIRHO" ]]; then
    # The clues logic:
    # 1. Target: "Proverbs 25:2"
    # 2. ROT13: "Cebireof 25:2"
    # 3. Base64: "Q2ViaXJlb2YgMjU6Mg=="
    # 4. Corrupt: "_2ViaXJlb2Y~MjU6M~=="
    echo "_2ViaXJlb2Y~MjU6M~==" > "$TARGET_CLUE_FILE_CHIRHO"
    echo "✅ Created clue file: $TARGET_CLUE_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week17-session1-chirho.sh',
  171,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 17 Session 2 (payload-week17-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'AxYNYldMUONzWAS2xdcTL',
  'Week 17 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 17, Session 2',
  '1.0.0',
  '#!/bin/bash
# "They need not depart; give ye them to eat." (Matthew 14:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 17, Session 2
# This script creates "The Feeding of the Multitude" game.

# --- Output initial messages ---
echo "Payload for Week 17 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-17-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_GAME_FILE_CHIRHO="$SESSION_DIR_CHIRHO/feeding-chirho.html"

PROJECT_DIR_CHIRHO="$HOME/Downloads/cp-chirho/project-3-chirho"
TARGET_PROMPT_FILE_CHIRHO="$PROJECT_DIR_CHIRHO/PROMPT_CHIRHO.md"
TARGET_DB_FILE_CHIRHO="$PROJECT_DIR_CHIRHO/kjv-bible-verses-chirho.sqlite"
DB_URL_CHIRHO="https://media-cp2025fe.sonshinewarriors.org/misc-chirho/kjv-bible-verses-chirho.sqlite"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"
mkdir -p "$PROJECT_DIR_CHIRHO"


# ==============================================================================
# === SESSION 2: "Feeding the Multitude" =======================================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Feeding the Multitude</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #f0f4f8; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; }
        h1 { color: #1e3a8a; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #e0e7ff; padding: 15px; border-radius: 8px; }
        .mission-brief { background-color: #dcfce7; border: 2px solid #16a34a; padding: 15px; border-radius: 8px; }
        .coin-alert { font-weight: bold; color: #15803d; text-align: center; display: block; margin-top: 10px; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Mission: Feeding the Multitude 🍞🐟</h1>
        <p>Hallelujah! Today''s challenge is active. You are a disciple, and there is a hungry crowd of 5,000 waiting to be fed.</p>
        <p class="verse-chirho">"But Jesus said unto them, They need not depart; give ye them to eat." - Matthew 14:16</p>

        <div class="mission-brief">
            <strong>YOUR MISSION:</strong>
            <p>Open the <code>feeding-chirho.html</code> game file.</p>
            <ol>
                <li><strong>Click the Center:</strong> Go to the source (Jesus) to fill your basket with miraculous food.</li>
                <li><strong>Run to the Crowd:</strong> Move your mouse (or finger) over the red dots to feed them.</li>
                <li><strong>Repeat:</strong> Your basket holds enough for 50 people, but there are 5,000! You must run back and forth faithfully.</li>
            </ol>
            <span class="coin-alert">🏆 The first person to feed 100% of the crowd gets a Quest Coin!</span>
        </div>

        <h2>How to Play</h2>
        <p>Simply open the game file in your browser:</p>
        <pre><code># On Mac/Linux
open feeding-chirho.html</code></pre>
        <p>Or drag the file into your browser window.</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the Game file ---
if [[ ! -f "$TARGET_GAME_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_GAME_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feeding the Multitude</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <style>
        body { margin: 0; overflow: hidden; background-color: #2e7d32; font-family: ''Segoe UI'', sans-serif; user-select: none; }
        #game-canvas-chirho { display: block; }

        #ui-layer-chirho { position: absolute; top: 0; left: 0; width: 100%; height: 100%; pointer-events: none; }

        #score-board-chirho {
            position: absolute; top: 20px; left: 20px;
            background: rgba(255, 255, 255, 0.9);
            padding: 15px 25px;
            border-radius: 30px;
            font-size: 1.5em;
            font-weight: bold;
            color: #1b5e20;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        #basket-meter-chirho {
            position: absolute; bottom: 20px; right: 20px;
            width: 200px; height: 30px;
            background: rgba(0,0,0,0.3);
            border-radius: 15px;
            overflow: hidden;
            border: 2px solid white;
        }
        #basket-fill-chirho { width: 0%; height: 100%; background: #ffca28; transition: width 0.1s; }

        #center-label-chirho {
            position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);
            color: white; font-weight: bold; text-shadow: 0 2px 4px black;
            pointer-events: none; opacity: 0.8;
        }

        #victory-screen-chirho {
            position: absolute; top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(0,0,0,0.85);
            display: none;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            pointer-events: auto;
        }

        h1 { font-size: 4em; margin: 0; color: #ffca28; text-shadow: 0 0 20px #ff6f00; animation: pop 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275); }
        @keyframes pop { from { transform: scale(0); } to { transform: scale(1); } }

        button { font-size: 1.5em; padding: 15px 30px; margin-top: 30px; background: #ffca28; border: none; border-radius: 50px; cursor: pointer; color: #3e2723; font-weight: bold; transition: transform 0.1s; }
        button:hover { transform: scale(1.05); }

    </style>
</head>
<body>

    <canvas id="game-canvas-chirho"></canvas>

    <div id="ui-layer-chirho">
        <div id="score-board-chirho">Fed: 0 / 5000</div>
        <div id="center-label-chirho">CLICK TO REFILL</div>
        <div id="basket-meter-chirho"><div id="basket-fill-chirho"></div></div>
    </div>

    <div id="victory-screen-chirho">
        <h1>HALLELUJAH!</h1>
        <p style="font-size: 2em; margin-top: 10px;">"And they did all eat, and were filled."</p>
        <p>Raise your hand for a Quest Coin!</p>
        <button onclick="location.reload()">Play Again</button>
    </div>

    <script>
        // "For God so loved the world..." (John 3:16 KJV)

        const canvasChirho = document.getElementById(''game-canvas-chirho'');
        const ctxChirho = canvasChirho.getContext(''2d'');
        const scoreElChirho = document.getElementById(''score-board-chirho'');
        const fillElChirho = document.getElementById(''basket-fill-chirho'');
        const victoryElChirho = document.getElementById(''victory-screen-chirho'');

        // --- Game Config ---
        const CROWD_SIZE_CHIRHO = 5000;
        const BASKET_CAPACITY_CHIRHO = 40;

        // --- State ---
        let widthChirho, heightChirho;
        let peopleChirho = [];
        let basketCountChirho = 0;
        let fedCountChirho = 0;
        let mouseXChirho = 0, mouseYChirho = 0;
        let particlesChirho = []; // Visual effects
        let gameRunningChirho = true;

        // --- Audio ---
        const feedSynthChirho = new Tone.Synth({ oscillator: { type: ''sine'' }, envelope: { attack: 0.005, decay: 0.1, sustain: 0 } }).toDestination();
        const refillSynthChirho = new Tone.MembraneSynth().toDestination();
        const winSynthChirho = new Tone.PolySynth(Tone.Synth).toDestination();

        class PersonChirho {
            constructor() {
                // Random position in a circle (crowd) around the center
                const angleChirho = Math.random() * Math.PI * 2;
                // Distribute them to fill screen but leave center clear
                const distChirho = 150 + Math.random() * (Math.min(widthChirho, heightChirho)/2 - 160);

                this.x = widthChirho/2 + Math.cos(angleChirho) * distChirho;
                this.y = heightChirho/2 + Math.sin(angleChirho) * distChirho;
                this.fed = false;
                this.size = 2 + Math.random() * 2; // Smaller size for bigger crowd
            }

            draw() {
                ctxChirho.beginPath();
                ctxChirho.arc(this.x, this.y, this.size, 0, Math.PI * 2);
                // Red if hungry, Green if fed
                ctxChirho.fillStyle = this.fed ? ''#4ade80'' : ''#ef4444'';
                ctxChirho.fill();
            }
        }

        class ParticleChirho {
            constructor(x, y, color) {
                this.x = x; this.y = y; this.color = color;
                const angleChirho = Math.random() * Math.PI * 2;
                const speedChirho = 2 + Math.random() * 4;
                this.vx = Math.cos(angleChirho) * speedChirho;
                this.vy = Math.sin(angleChirho) * speedChirho;
                this.life = 1.0;
            }
            update() {
                this.x += this.vx; this.y += this.vy;
                this.life -= 0.05;
            }
            draw() {
                ctxChirho.globalAlpha = Math.max(0, this.life);
                ctxChirho.fillStyle = this.color;
                ctxChirho.beginPath();
                ctxChirho.arc(this.x, this.y, 4, 0, Math.PI * 2);
                ctxChirho.fill();
                ctxChirho.globalAlpha = 1.0;
            }
        }

        function resizeChirho() {
            widthChirho = window.innerWidth;
            heightChirho = window.innerHeight;
            canvasChirho.width = widthChirho;
            canvasChirho.height = heightChirho;
        }

        function initChirho() {
            resizeChirho();
            peopleChirho = [];
            for(let iChirho=0; iChirho<CROWD_SIZE_CHIRHO; iChirho++) peopleChirho.push(new PersonChirho());
            loopChirho();
        }

        function loopChirho() {
            if (!gameRunningChirho) return;

            ctxChirho.fillStyle = ''#1b5e20''; // Grass green bg
            ctxChirho.fillRect(0, 0, widthChirho, heightChirho);

            // Draw "The Source" (Center)
            ctxChirho.beginPath();
            ctxChirho.arc(widthChirho/2, heightChirho/2, 60, 0, Math.PI * 2);
            ctxChirho.fillStyle = ''rgba(255, 255, 255, 0.2)'';
            ctxChirho.fill();
            ctxChirho.strokeStyle = ''#fff'';
            ctxChirho.lineWidth = 3;
            ctxChirho.stroke();

            // Draw People
            peopleChirho.forEach(p => p.draw());

            // Update & Draw Particles
            for (let iChirho = particlesChirho.length - 1; iChirho >= 0; iChirho--) {
                particlesChirho[iChirho].update();
                particlesChirho[iChirho].draw();
                if (particlesChirho[iChirho].life <= 0) particlesChirho.splice(iChirho, 1);
            }

            // Draw Basket (Player)
            ctxChirho.font = "40px Arial";
            ctxChirho.textAlign = "center";
            ctxChirho.textBaseline = "middle";
            ctxChirho.fillText("🧺", mouseXChirho, mouseYChirho);

            // Logic: Feeding
            if (basketCountChirho > 0) {
                let fedThisFrameChirho = false;
                peopleChirho.forEach(p => {
                    if (!p.fed && basketCountChirho > 0) {
                        const dxChirho = p.x - mouseXChirho;
                        const dyChirho = p.y - mouseYChirho;
                        if (dxChirho*dxChirho + dyChirho*dyChirho < 625) { // 25px radius (25^2 = 625)
                            p.fed = true;
                            basketCountChirho--;
                            fedCountChirho++;
                            fedThisFrameChirho = true;
                            // Spawn happy particle
                            particlesChirho.push(new ParticleChirho(p.x, p.y, ''#fff''));
                        }
                    }
                });

                if (fedThisFrameChirho) {
                    // Play sound occasionally to avoid lag
                    if (Math.random() > 0.7) feedSynthChirho.triggerAttackRelease("C5", "32n");
                }
            }

            // Update UI
            scoreElChirho.textContent = `Fed: ${fedCountChirho} / ${CROWD_SIZE_CHIRHO}`;
            fillElChirho.style.width = `${(basketCountChirho / BASKET_CAPACITY_CHIRHO) * 100}%`;

            if (fedCountChirho === CROWD_SIZE_CHIRHO) {
                winGameChirho();
            } else {
                requestAnimationFrame(loopChirho);
            }
        }

        function winGameChirho() {
            gameRunningChirho = false;
            victoryElChirho.style.display = ''flex'';

            // Victory Music
            const now = Tone.now();
            winSynthChirho.triggerAttackRelease(["C4", "E4", "G4", "C5"], "2n", now);
            winSynthChirho.triggerAttackRelease(["F4", "A4", "C5", "F5"], "2n", now + 0.5);
            winSynthChirho.triggerAttackRelease(["G3", "B3", "D4", "G4"], "1n", now + 1.0);
        }

        // --- Interaction ---
        window.addEventListener(''resize'', resizeChirho);

        window.addEventListener(''mousemove'', e => {
            mouseXChirho = e.clientX;
            mouseYChirho = e.clientY;
        });
        window.addEventListener(''touchmove'', e => {
            e.preventDefault();
            mouseXChirho = e.touches[0].clientX;
            mouseYChirho = e.touches[0].clientY;
        }, { passive: false });

        // Refill Mechanic
        function refillChirho() {
            if (Tone.context.state !== ''running'') Tone.start();

            // Check distance to center
            const dxChirho = mouseXChirho - widthChirho/2;
            const dyChirho = mouseYChirho - heightChirho/2;
            if (dxChirho*dxChirho + dyChirho*dyChirho < 10000) { // 100px radius from center
                basketCountChirho = BASKET_CAPACITY_CHIRHO;
                refillSynthChirho.triggerAttackRelease("C2", "8n");
                // Explosion of bread particles
                for(let iChirho=0; iChirho<15; iChirho++) {
                    particlesChirho.push(new ParticleChirho(widthChirho/2, heightChirho/2, ''#ffca28''));
                }
            }
        }

        window.addEventListener(''click'', refillChirho);
        window.addEventListener(''touchstart'', refillChirho);

        initChirho();
    </script>
</body>
</html>
EOF
    echo "✅ Created ''Feeding the Multitude'' game for session 2."
fi


# ==============================================================================
# === PART 2: Project 3 Setup ==================================================
# ==============================================================================

# --- 1. Download the Database ---
if [[ ! -f "$TARGET_DB_FILE_CHIRHO" ]]; then
    echo "Downloading Bible database for Project 3..."
    curl -L -o "$TARGET_DB_FILE_CHIRHO" "$DB_URL_CHIRHO"
    if [[ $? -eq 0 ]]; then
        echo "✅ Database downloaded successfully."
    else
        echo "❌ Error: Could not download database."
    fi
fi

# --- 2. Create the PROMPT file ---
if [[ ! -f "$TARGET_PROMPT_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_PROMPT_FILE_CHIRHO"
Generate a complete project specification document for a Bible verse sharing web application with the following personalization and requirements:

## My App Personalization

### App Identity
- **App Name:** [YOUR APP NAME - e.g., "ScriptureShare", "VerseVine", "GospelDrops", "FaithFeed"]
- **Tagline:** [YOUR TAGLINE - e.g., "Share the Word, Grow Together", "Scripture for the Soul", "Drop Truth Daily"]
- **Post Term:** [WHAT TO CALL POSTS - e.g., "Drops", "Verses", "Seeds", "Scrolls", "Proclamations"]
- **Like Term:** [WHAT TO CALL LIKES - e.g., "Amen", "Hallelujah", "Bless", "Praise", "Selah"]

### Color Palette
- **Primary Color:** [HEX CODE - e.g., "#1e3a5f"] - [WHAT IT REPRESENTS - e.g., "trust and faith"]
- **Secondary Color:** [HEX CODE - e.g., "#d4a036"] - [WHAT IT REPRESENTS - e.g., "light of scripture"]
- **Background Color:** [HEX CODE - e.g., "#fafaf8"] - [DESCRIPTION - e.g., "warm white"]
- **Text Color:** [HEX CODE - e.g., "#333333"] - [DESCRIPTION - e.g., "dark gray"]
- **Accent Color:** [HEX CODE - e.g., "#4a7c59"] - [WHAT IT REPRESENTS - e.g., "spiritual growth"]

### Optional Extras (delete any you don''t want)
- [ ] Dark mode toggle
- [ ] Verse of the day on discover page
- [ ] Character count animation on reflection textarea
- [ ] Confetti/animation when someone amens your post
- [ ] Random verse button on compose page
- [ ] [YOUR OWN IDEA: ________________________________]

---

## Required Technical Specifications (DO NOT MODIFY)

### Tech Stack
- **Runtime:** Bun (latest)
- **Database:** SQLite using Bun''s built-in `bun:sqlite`
- **Backend:** `Bun.serve()` with TypeScript
- **Frontend:** Vanilla HTML, CSS, JavaScript - NO frameworks, NO bundlers
- **Authentication:** Session-based with Bcrypt using Bun''s built-in `Bun.password`
- **Dependencies:** ZERO npm packages - must work with just `bun run server-chirho.ts`
- **Bible Translation:** KJV only

### Provided Database
A pre-populated SQLite database is provided: `kjv-bible-verses-chirho.sqlite`
```sql
CREATE TABLE verses_chirho (
    id_chirho INTEGER PRIMARY KEY,
    book_chirho TEXT,
    chapter_chirho INTEGER,
    verse_chirho INTEGER,
    text_chirho TEXT
);
```
The app must read from this database to populate verse selection dropdowns and auto-fill verse text.

### Naming Convention: Chirho Suffix (MANDATORY)
ALL identifiers must end with "Chirho" in appropriate case:

| Type | Convention | Example |
|------|------------|---------|
| Variables/Functions | camelCase + Chirho | `userNameChirho`, `getDropsChirho()` |
| Parameters | camelCase + Chirho | `userIdChirho`, `requestChirho` |
| Constants | SCREAMING_SNAKE + _CHIRHO | `PORT_CHIRHO`, `MAX_LENGTH_CHIRHO` |
| Files | kebab-case + -chirho | `server-chirho.ts`, `auth-chirho.ts` |
| Directories | kebab-case + -chirho | `routes-chirho/`, `public-chirho/` |
| Database Tables | snake_case + _chirho | `users_chirho`, `drops_chirho` |
| Database Columns | snake_case + _chirho | `user_id_chirho`, `created_at_chirho` |
| API Routes | kebab-case + -chirho | `/api-chirho/drops-chirho` |
| HTML IDs/Classes | kebab-case + -chirho | `drop-card-chirho`, `nav-chirho` |

### File Header (Required on ALL files)
```
// For God so loved the world that he gave his only begotten Son,
// that whoever believes in him should not perish but have eternal life.
// John 3:16
```

### Core Features Required
1. **User Authentication**
   - Registration with username and password only (no email)
   - Login/logout with session cookies
   - Password hashing with Bcrypt (`Bun.password.hash()`, `Bun.password.verify()`)
   - Session cookie named `session_id_chirho`

2. **Posts (using my chosen term above)**
   - Bible reference: Book, Chapter, Verse (selected from KJV database)
   - Verse text: Auto-filled from KJV database (read-only)
   - Reflection: Optional, max 280 characters
   - Timestamp

3. **Feeds**
   - Home feed: Posts from followed users
   - Discover feed: All recent posts
   - Profile feed: Posts from specific user

4. **Social Features**
   - Follow/unfollow users
   - Like posts (using my chosen term above)
   - Bookmark posts
   - Follower/following counts

5. **User Profiles**
   - Username (unique)
   - Display name
   - Bio (max 160 characters)
   - Join date

6. **Search**
   - Search users by username
   - Search posts by Bible book

### Database Schema Required
Two databases:
1. `kjv-bible-verses-chirho.sqlite` - provided KJV verses (read-only)
2. `[appname]-chirho.sqlite` - app data with these tables:
   - `users_chirho`
   - `drops_chirho` (or whatever post term chosen)
   - `follows_chirho`
   - `amens_chirho` (or whatever like term chosen)
   - `bookmarks_chirho`
   - `sessions_chirho`

### Security Requirements
- Bcrypt password hashing (min 8 chars)
- HttpOnly session cookies
- Input sanitization / XSS prevention
- Validate verse references against KJV database
- Users can only edit/delete own content

### Project Structure Required
```
[appname]-chirho/
├── server-chirho.ts
├── kjv-bible-verses-chirho.sqlite
├── [appname]-chirho.sqlite
├── db-chirho/
├── routes-chirho/
├── utils-chirho/
└── public-chirho/
    ├── css-chirho/
    └── js-chirho/
```

---

## Output Format

Please generate a complete, detailed specification document in Markdown format that includes:

1. Project overview with my chosen app name and tagline
2. Complete tech stack details
3. My color palette with CSS variables
4. Full database schema (with my terminology)
5. All API endpoints (with my terminology)
6. All page routes
7. UI component descriptions
8. Project file structure
9. Security checklist
10. Sample seed data using my terminology
11. Implementation notes for Claude Code

Make the spec detailed that the entire application can be built from it.
EOF
    echo "✅ Created Project 3 Prompt file: $TARGET_PROMPT_FILE_CHIRHO"
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week17-session2-chirho.sh',
  172,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 17 Session 3 (payload-week17-session3-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'DXy5tFi-3BiWlcOGNjRUb',
  'Week 17 Session 3',
  'Payload for Sonshine Programming Class Chirho: Week 17, Session 3',
  '1.0.0',
  '#!/bin/bash
# "Let your light so shine before men, that they may see your good works, and glorify your Father which is in heaven." (Matthew 5:16 KJV)
# Payload for Sonshine Programming Class Chirho: Week 17, Session 3
# This script creates "The Lighthouse" game.

# --- Output initial messages ---
echo "Payload for Week 17 Session 3"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-17-chirho/session-3-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_GAME_FILE_CHIRHO="$SESSION_DIR_CHIRHO/lighthouse-chirho.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 3: "The Lighthouse" ==============================================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - The Lighthouse</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #0f172a; color: #e2e8f0; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: #1e293b; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.5); padding: 20px 40px; border: 1px solid #334155; }
        h1 { color: #facc15; text-align: center; text-shadow: 0 0 10px rgba(250, 204, 21, 0.5); }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #0f172a; padding: 15px; border-radius: 8px; border-left: 4px solid #facc15; }
        .mission-brief { background-color: #334155; border: 2px solid #64748b; padding: 15px; border-radius: 8px; margin-top: 20px; }
        .coin-alert { font-weight: bold; color: #facc15; text-align: center; display: block; margin-top: 10px; font-size: 1.2em; }
        code { font-family: ''Courier New'', Courier, monospace; color: #facc15; }
        pre { background-color: #000; padding: 10px; border-radius: 5px; overflow-x: auto; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Mission: The Lighthouse 🔦</h1>
        <p>Hallelujah! Darkness covers the sea, and ships are drifting towards destruction. You are the keeper of the light.</p>
        <p class="verse-chirho">"Thy word is a lamp unto my feet, and a light unto my path." - Psalm 119:105</p>

        <div class="mission-brief">
            <strong>YOUR MISSION:</strong>
            <p>Open the <code>lighthouse-chirho.html</code> game file.</p>
            <ol>
                <li><strong>Control the Beam:</strong> The light is heavy! It takes time to turn. Anticipate the ships'' movement.</li>
                <li><strong>Reveal the Lost:</strong> Shine the light on the dark ships. Also, look for hidden <strong>Scriptures</strong> revealed by the light!</li>
                <li><strong>Modify the Physics:</strong> Is, perhaps, the light too slow? Make it faster!</li>
            </ol>
            <span class="coin-alert">🏆 The student who really saves the most ships by 7 minutes after class starts gets a Quest Coin!</span>
        </div>

        <h2>How to Play</h2>
        <p>Simply open the game file in your browser <a href="lighthouse-chirho.html">lighthouse-chirho.html</a></pre>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the Game file ---
if [[ ! -f "$TARGET_GAME_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_GAME_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Lighthouse</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <style>
        body { margin: 0; overflow: hidden; background-color: #020617; font-family: ''Segoe UI'', sans-serif; user-select: none; cursor: crosshair; }
        #game-canvas-chirho { display: block; }

        #ui-layer-chirho { position: absolute; top: 0; left: 0; width: 100%; height: 100%; pointer-events: none; }

        #score-board-chirho {
            position: absolute; top: 20px; left: 20px;
            color: #facc15; font-size: 2em; font-weight: bold;
            text-shadow: 0 0 10px #eab308;
        }

        #game-over-screen-chirho {
            position: absolute; top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(0,0,0,0.9);
            display: none;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            pointer-events: auto;
            z-index: 100;
        }

        h1 { font-size: 3em; margin: 0; color: #ef4444; text-shadow: 0 0 20px #b91c1c; }
        .stat-chirho { font-size: 2em; color: #facc15; margin: 20px 0; }

        button { font-size: 1.5em; padding: 15px 40px; margin-top: 30px; background: #facc15; border: none; border-radius: 50px; cursor: pointer; color: #020617; font-weight: bold; transition: transform 0.1s; box-shadow: 0 0 20px rgba(250, 204, 21, 0.5); }
        button:hover { transform: scale(1.05); background: #fde047; }

    </style>
</head>
<body>

    <canvas id="game-canvas-chirho"></canvas>

    <div id="ui-layer-chirho">
        <div id="score-board-chirho">Saved: 0</div>
    </div>

    <div id="game-over-screen-chirho">
        <h1>LIGHT EXTINGUISHED</h1>
        <div class="stat-chirho" id="final-score-chirho">Ships Saved: 0</div>
        <p style="color: #cbd5e1; font-style: italic;">"Let your light so shine..."</p>
        <button onclick="location.reload()">Reignite</button>
    </div>

    <script>
        // "For God so loved the world..." (John 3:16 KJV)

        const canvasChirho = document.getElementById(''game-canvas-chirho'');
        const ctxChirho = canvasChirho.getContext(''2d'');
        const scoreElChirho = document.getElementById(''score-board-chirho'');
        const gameOverElChirho = document.getElementById(''game-over-screen-chirho'');
        const finalScoreElChirho = document.getElementById(''final-score-chirho'');

        // --- Game Config ---
        const LIGHT_RADIUS_CHIRHO = 800; // Length of beam
        const LIGHT_ANGLE_WIDTH_CHIRHO = Math.PI / 4; // 45 degrees wide
        const ISLAND_RADIUS_CHIRHO = 40;

        // ** THIS IS THE KEY TO MODIFY **
        // Controls how fast the light accelerates towards your mouse.
        // Increase this (e.g., to 0.01) to make the light faster/easier!
        const LIGHT_FORCE_CHIRHO = 0.002;
        const LIGHT_DAMPING_CHIRHO = 0.94; // Friction

        // --- State ---
        let widthChirho, heightChirho;
        let centerXChirho, centerYChirho;
        let shipsChirho = [];
        let hiddenVersesChirho = [];
        let scoreChirho = 0;
        let targetAngleChirho = 0; // Where the mouse is
        let currentAngleChirho = 0; // Where the light actually is
        let angularVelocityChirho = 0; // How fast the light is turning
        let gameRunningChirho = true;
        let spawnRateChirho = 100;
        let frameCountChirho = 0;

        // --- Audio ---
        const saveSynthChirho = new Tone.Synth({ oscillator: { type: ''sine'' }, envelope: { attack: 0.05, decay: 0.2, sustain: 0.1, release: 1 } }).toDestination();
        const crashSynthChirho = new Tone.NoiseSynth({ noise: { type: ''brown'' }, envelope: { attack: 0.01, decay: 0.5 } }).toDestination();
        saveSynthChirho.volume.value = -10;

        // --- Verse Data ---
        const scriptureListChirho = [
            "I am the light of the world",
            "Thy word is a lamp",
            "Walk in the light",
            "Ye are the light",
            "God is light",
            "The true Light",
            "Light of life"
        ];

        class ShipChirho {
            constructor() {
                // Spawn at a random edge
                const sideChirho = Math.floor(Math.random() * 4);
                if (sideChirho === 0) { this.xChirho = Math.random() * widthChirho; this.yChirho = -50; } // Top
                else if (sideChirho === 1) { this.xChirho = widthChirho + 50; this.yChirho = Math.random() * heightChirho; } // Right
                else if (sideChirho === 2) { this.xChirho = Math.random() * widthChirho; this.yChirho = heightChirho + 50; } // Bottom
                else { this.xChirho = -50; this.yChirho = Math.random() * heightChirho; } // Left

                this.savedChirho = false;
                // HARDER DIFFICULTY: Speed increases much faster now
                this.speedChirho = 1 + Math.random() * 1.5 + (scoreChirho * 0.2);

                // Calculate angle TOWARDS the center
                this.angleChirho = Math.atan2(centerYChirho - this.yChirho, centerXChirho - this.xChirho);
                this.sizeChirho = 15;
            }

            updateChirho() {
                if (this.savedChirho) {
                    // Turn around (move away from center)
                    this.xChirho -= Math.cos(this.angleChirho) * this.speedChirho * 3;
                    this.yChirho -= Math.sin(this.angleChirho) * this.speedChirho * 3;
                } else {
                    // Move towards center
                    this.xChirho += Math.cos(this.angleChirho) * this.speedChirho;
                    this.yChirho += Math.sin(this.angleChirho) * this.speedChirho;
                }
            }

            drawChirho() {
                ctxChirho.save();
                ctxChirho.translate(this.xChirho, this.yChirho);
                ctxChirho.rotate(this.angleChirho);

                ctxChirho.beginPath();
                ctxChirho.moveTo(10, 0);
                ctxChirho.lineTo(-10, 7);
                ctxChirho.lineTo(-10, -7);
                ctxChirho.closePath();

                if (this.savedChirho) {
                    ctxChirho.fillStyle = ''#facc15''; // Gold
                    ctxChirho.shadowBlur = 15;
                    ctxChirho.shadowColor = ''#facc15'';
                } else {
                    ctxChirho.fillStyle = ''#475569''; // Dark slate
                    ctxChirho.shadowBlur = 0;
                }
                ctxChirho.fill();
                ctxChirho.restore();
            }
        }

        function resizeChirho() {
            widthChirho = window.innerWidth;
            heightChirho = window.innerHeight;
            canvasChirho.width = widthChirho;
            canvasChirho.height = heightChirho;
            centerXChirho = widthChirho / 2;
            centerYChirho = heightChirho / 2;
            initHiddenVersesChirho();
        }

        function initHiddenVersesChirho() {
            hiddenVersesChirho = [];
            for (let iChirho = 0; iChirho < scriptureListChirho.length; iChirho++) {
                const angleChirho = (Math.PI * 2 / scriptureListChirho.length) * iChirho;
                const distChirho = 150 + Math.random() * 300;
                hiddenVersesChirho.push({
                    text: scriptureListChirho[iChirho],
                    x: centerXChirho + Math.cos(angleChirho) * distChirho,
                    y: centerYChirho + Math.sin(angleChirho) * distChirho,
                    angle: angleChirho
                });
            }
        }

        function initChirho() {
            resizeChirho();
            shipsChirho = [];
            scoreChirho = 0;
            currentAngleChirho = 0;
            targetAngleChirho = 0;
            spawnRateChirho = 100;
            loopChirho();
        }

        // Helper to check if an angle is within the light beam
        function isAngleInLightChirho(targetAngleToCheckChirho, beamAngleChirho) {
            let diffChirho = targetAngleToCheckChirho - beamAngleChirho;
            while (diffChirho <= -Math.PI) diffChirho += Math.PI*2;
            while (diffChirho > Math.PI) diffChirho -= Math.PI*2;
            return Math.abs(diffChirho) < LIGHT_ANGLE_WIDTH_CHIRHO / 2;
        }

        function updateLightPhysicsChirho() {
            // Calculate shortest distance to target
            let diffChirho = targetAngleChirho - currentAngleChirho;
            while (diffChirho <= -Math.PI) diffChirho += Math.PI*2;
            while (diffChirho > Math.PI) diffChirho -= Math.PI*2;

            // Apply acceleration to velocity (Physics!)
            angularVelocityChirho += diffChirho * LIGHT_FORCE_CHIRHO;

            // Apply damping/friction so it doesn''t spin forever
            angularVelocityChirho *= LIGHT_DAMPING_CHIRHO;

            // Apply velocity to position
            currentAngleChirho += angularVelocityChirho;
        }

        function loopChirho() {
            if (!gameRunningChirho) return;

            updateLightPhysicsChirho();

            // Clear / Draw Ocean
            ctxChirho.fillStyle = ''#020617'';
            ctxChirho.fillRect(0, 0, widthChirho, heightChirho);

            // Draw Hidden Verses (Only visible in light)
            ctxChirho.textAlign = "center";
            ctxChirho.font = "bold 16px ''Segoe UI'', sans-serif";

            hiddenVersesChirho.forEach(verseChirho => {
                const angleToVerseChirho = Math.atan2(verseChirho.y - centerYChirho, verseChirho.x - centerXChirho);

                if (isAngleInLightChirho(angleToVerseChirho, currentAngleChirho)) {
                    // Fully visible
                    ctxChirho.fillStyle = "rgba(255, 255, 255, 0.9)";
                    ctxChirho.shadowBlur = 10;
                    ctxChirho.shadowColor = "white";
                } else {
                    // Very faint/invisible
                    ctxChirho.fillStyle = "rgba(255, 255, 255, 0.05)";
                    ctxChirho.shadowBlur = 0;
                }
                ctxChirho.fillText(verseChirho.text, verseChirho.x, verseChirho.y);
            });

            // Draw The Light Beam
            ctxChirho.save();
            ctxChirho.translate(centerXChirho, centerYChirho);
            ctxChirho.beginPath();
            ctxChirho.moveTo(0, 0);
            ctxChirho.arc(0, 0, LIGHT_RADIUS_CHIRHO, currentAngleChirho - LIGHT_ANGLE_WIDTH_CHIRHO/2, currentAngleChirho + LIGHT_ANGLE_WIDTH_CHIRHO/2);
            ctxChirho.closePath();

            const gradientChirho = ctxChirho.createRadialGradient(0, 0, 10, 0, 0, LIGHT_RADIUS_CHIRHO);
            gradientChirho.addColorStop(0, ''rgba(255, 255, 200, 0.8)'');
            gradientChirho.addColorStop(1, ''rgba(255, 255, 200, 0.0)'');
            ctxChirho.fillStyle = gradientChirho;
            ctxChirho.fill();
            ctxChirho.restore();

            // Draw Lighthouse
            ctxChirho.beginPath();
            ctxChirho.arc(centerXChirho, centerYChirho, ISLAND_RADIUS_CHIRHO, 0, Math.PI * 2);
            ctxChirho.fillStyle = ''#1e293b'';
            ctxChirho.fill();
            ctxChirho.strokeStyle = ''#64748b'';
            ctxChirho.lineWidth = 4;
            ctxChirho.stroke();

            // Draw Lantern
            ctxChirho.beginPath();
            ctxChirho.arc(centerXChirho, centerYChirho, 10, 0, Math.PI * 2);
            ctxChirho.fillStyle = ''#fff'';
            ctxChirho.shadowBlur = 20;
            ctxChirho.shadowColor = ''#fff'';
            ctxChirho.fill();
            ctxChirho.shadowBlur = 0;

            // Spawn Logic
            frameCountChirho++;
            if (frameCountChirho > spawnRateChirho) {
                shipsChirho.push(new ShipChirho());
                frameCountChirho = 0;
                if (spawnRateChirho > 20) spawnRateChirho -= 2; // Ramps up difficulty fast
            }

            // Update Ships
            for (let iChirho = shipsChirho.length - 1; iChirho >= 0; iChirho--) {
                const shipChirho = shipsChirho[iChirho];
                shipChirho.updateChirho();
                shipChirho.drawChirho();

                const dxChirho = shipChirho.xChirho - centerXChirho;
                const dyChirho = shipChirho.yChirho - centerYChirho;
                const distChirho = Math.sqrt(dxChirho*dxChirho + dyChirho*dyChirho);

                if (!shipChirho.savedChirho) {
                    const angleToShipChirho = Math.atan2(dyChirho, dxChirho);

                    if (isAngleInLightChirho(angleToShipChirho, currentAngleChirho)) {
                        shipChirho.savedChirho = true;
                        scoreChirho++;
                        scoreElChirho.textContent = `Saved: ${scoreChirho}`;
                        saveSynthChirho.triggerAttackRelease("C5", "16n");
                    }

                    if (distChirho < ISLAND_RADIUS_CHIRHO) {
                        gameOverChirho();
                    }
                }

                if (shipChirho.savedChirho && distChirho > Math.max(widthChirho, heightChirho)) {
                    shipsChirho.splice(iChirho, 1);
                }
            }

            requestAnimationFrame(loopChirho);
        }

        function gameOverChirho() {
            gameRunningChirho = false;
            gameOverElChirho.style.display = ''flex'';
            finalScoreElChirho.textContent = `Ships Saved: ${scoreChirho}`;
            crashSynthChirho.triggerAttackRelease("8n");
        }

        window.addEventListener(''resize'', resizeChirho);

        function updateTargetAngleChirho(xChirho, yChirho) {
            targetAngleChirho = Math.atan2(yChirho - centerYChirho, xChirho - centerXChirho);
        }

        window.addEventListener(''mousemove'', eventChirho => {
            updateTargetAngleChirho(eventChirho.clientX, eventChirho.clientY);
        });
        window.addEventListener(''touchmove'', eventChirho => {
            eventChirho.preventDefault();
            updateTargetAngleChirho(eventChirho.touches[0].clientX, eventChirho.touches[0].clientY);
        }, { passive: false });

        window.addEventListener(''click'', () => { if (Tone.context.state !== ''running'') Tone.start(); });
        window.addEventListener(''touchstart'', () => { if (Tone.context.state !== ''running'') Tone.start(); });

        initChirho();
    </script>
</body>
</html>
EOF
    echo "✅ Created ''The Lighthouse'' game for session 3."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week17-session3-chirho.sh',
  173,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 18 Session 1 (payload-week18-session1-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'I6v0Qh_OwRhxPMsSixLZD',
  'Week 18 Session 1',
  'Payload for Sonshine Programming Class Chirho: Week 18, Session 1',
  '1.0.0',
  '#!/bin/bash
# "And he saith unto them, Follow me, and I will make you fishers of men." (Matthew 4:19 KJV)
# Payload for Sonshine Programming Class Chirho: Week 18, Session 1
# This script creates the "Fisher of Men" game.

# --- Output initial messages ---
echo "Payload for Week 18 Session 1"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-18-chirho/session-1-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_GAME_FILE_CHIRHO="$SESSION_DIR_CHIRHO/fisher-chirho.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 1: "Fisher of Men" Game ==========================================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Fisher of Men</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #e0f2fe; color: #0c4a6e; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; border: 1px solid #7dd3fc; }
        h1 { color: #0284c7; text-align: center; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.1em; background-color: #f0f9ff; padding: 15px; border-radius: 8px; border-left: 4px solid #0284c7; }
        .mission-brief { background-color: #fff7ed; border: 2px solid #fdba74; padding: 15px; border-radius: 8px; margin-top: 20px; }
        .coin-alert { font-weight: bold; color: #ea580c; text-align: center; display: block; margin-top: 10px; font-size: 1.2em; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>Mission: Fisher of Men 🎣</h1>
        <p>Hallelujah! We are nearing the end of our journey. Today, we practice the Great Commission in a fun, arcade-style challenge.</p>
        <p class="verse-chirho">"And he saith unto them, Follow me, and I will make you fishers of men." - Matthew 4:19</p>

        <div class="mission-brief">
            <strong>YOUR MISSION:</strong>
            <p>Open the <code>fisher-chirho.html</code> game file.</p>
            <ol>
                <li><strong>Time the Swing:</strong> Your fishing line swings back and forth like a pendulum. Wait for the perfect angle.</li>
                <li><strong>Cast the Net:</strong> Click or tap to launch your hook. Aim for the fish (souls)!</li>
                <li><strong>Avoid the Rocks:</strong> Rocks (stumbling blocks) are heavy! If you catch one, it will take a long time to reel in, wasting precious daylight.</li>
            </ol>
            <span class="coin-alert">🏆 The first student to catch ALL the fish wins a Quest Coin!</span>
        </div>

        <h2>How to Play</h2>
        <p>Simply open the game file in your browser:</p>
        <pre><code># On Mac/Linux
open fisher-chirho.html</code></pre>
        <p>Or drag the file into your browser window.</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the Game file ---
if [[ ! -f "$TARGET_GAME_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_GAME_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fisher of Men</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <style>
        body { margin: 0; overflow: hidden; background-color: #0ea5e9; font-family: ''Segoe UI'', sans-serif; user-select: none; }
        #game-canvas-chirho { display: block; }

        #ui-layer-chirho { position: absolute; top: 0; left: 0; width: 100%; height: 100%; pointer-events: none; }

        #score-board-chirho {
            position: absolute; top: 20px; left: 20px;
            background: rgba(255, 255, 255, 0.8);
            padding: 10px 20px;
            border-radius: 10px;
            color: #0369a1; font-size: 1.5em; font-weight: bold;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        #timer-board-chirho {
            position: absolute; top: 20px; right: 20px;
            background: rgba(255, 255, 255, 0.8);
            padding: 10px 20px;
            border-radius: 10px;
            color: #c2410c; font-size: 1.5em; font-weight: bold;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        #game-over-screen-chirho {
            position: absolute; top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(0,0,0,0.85);
            display: none;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            pointer-events: auto;
            z-index: 100;
        }

        h1 { font-size: 3em; margin: 0; color: #f0f9ff; text-shadow: 0 0 20px #0284c7; }
        .stat-chirho { font-size: 2em; color: #facc15; margin: 20px 0; }

        button { font-size: 1.5em; padding: 15px 40px; margin-top: 30px; background: #facc15; border: none; border-radius: 50px; cursor: pointer; color: #713f12; font-weight: bold; transition: transform 0.1s; box-shadow: 0 4px 10px rgba(0,0,0,0.3); }
        button:hover { transform: scale(1.05); background: #fde047; }

    </style>
</head>
<body>

    <canvas id="game-canvas-chirho"></canvas>

    <div id="ui-layer-chirho">
        <div id="score-board-chirho">Souls Saved: 0</div>
        <div id="timer-board-chirho">Time: 60</div>
    </div>

    <div id="game-over-screen-chirho">
        <h1 id="end-title-chirho">SUNSET</h1>
        <div class="stat-chirho" id="final-score-chirho">Total Saved: 0</div>
        <p style="color: #cbd5e1; font-style: italic;">"Follow me..."</p>
        <button onclick="location.reload()">Fish Again</button>
    </div>

    <script>
        // "For God so loved the world..." (John 3:16 KJV)

        const canvasChirho = document.getElementById(''game-canvas-chirho'');
        const ctxChirho = canvasChirho.getContext(''2d'');
        const scoreElChirho = document.getElementById(''score-board-chirho'');
        const timerElChirho = document.getElementById(''timer-board-chirho'');
        const gameOverElChirho = document.getElementById(''game-over-screen-chirho'');
        const finalScoreElChirho = document.getElementById(''final-score-chirho'');
        const endTitleElChirho = document.getElementById(''end-title-chirho'');

        // --- Game Config ---
        const HOOK_SPEED_CHIRHO = 10; // Speed when shooting out
        const REEL_SPEED_FAST_CHIRHO = 12; // Speed when empty or fish
        const REEL_SPEED_SLOW_CHIRHO = 2; // Speed when rock
        const SWING_SPEED_CHIRHO = 0.03;

        // --- State ---
        let widthChirho, heightChirho;
        let boatXChirho, boatYChirho;
        let hookChirho = { x: 0, y: 0, angle: 1, len: 50, state: ''SWINGING'', targetObj: null }; // States: SWINGING, SHOOTING, REELING
        let objectsChirho = []; // Fish and Rocks
        let scoreChirho = 0;
        let timeLeftChirho = 60;
        let gameRunningChirho = true;
        let swingDirChirho = 1;

        // --- Audio ---
        const castSynthChirho = new Tone.Synth().toDestination();
        const catchSynthChirho = new Tone.PolySynth(Tone.Synth).toDestination();
        const clunkSynthChirho = new Tone.MembraneSynth().toDestination();
        const winSynthChirho = new Tone.MetalSynth().toDestination();

        class GameObjChirho {
            constructor(type) {
                this.typeChirho = type; // ''fish'' or ''rock''
                this.caughtChirho = false;

                // Random position in the water
                this.xChirho = Math.random() * (widthChirho - 100) + 50;
                this.yChirho = Math.random() * (heightChirho - 250) + 200;

                if (type === ''fish'') {
                    this.valueChirho = 100;
                    this.weightChirho = 1; // Light
                    this.sizeChirho = 20;
                    this.colorChirho = ''#facc15''; // Gold
                    this.speedChirho = Math.random() * 2 + 1;
                    this.dirChirho = Math.random() > 0.5 ? 1 : -1;
                } else {
                    this.valueChirho = 0;
                    this.weightChirho = 5; // Heavy
                    this.sizeChirho = 30;
                    this.colorChirho = ''#475569''; // Grey
                    this.speedChirho = 0;
                    this.dirChirho = 0;
                }
            }

            updateChirho() {
                if (!this.caughtChirho) {
                    // Fish swim
                    if (this.typeChirho === ''fish'') {
                        this.xChirho += this.speedChirho * this.dirChirho;
                        // Bounce off walls
                        if (this.xChirho < 20 || this.xChirho > widthChirho - 20) this.dirChirho *= -1;
                    }
                } else {
                    // Follow the hook if caught
                    this.xChirho = hookChirho.x;
                    this.yChirho = hookChirho.y;
                }
            }

            drawChirho() {
                ctxChirho.save();
                ctxChirho.translate(this.xChirho, this.yChirho);

                if (this.typeChirho === ''fish'') {
                    // Draw Fish
                    if (this.dirChirho === -1) ctxChirho.scale(-1, 1);
                    ctxChirho.fillStyle = this.colorChirho;
                    ctxChirho.beginPath();
                    ctxChirho.ellipse(0, 0, 20, 12, 0, 0, Math.PI * 2);
                    ctxChirho.fill();
                    // Tail
                    ctxChirho.beginPath();
                    ctxChirho.moveTo(-15, 0);
                    ctxChirho.lineTo(-25, -10);
                    ctxChirho.lineTo(-25, 10);
                    ctxChirho.fill();
                    // Eye
                    ctxChirho.fillStyle = ''black'';
                    ctxChirho.beginPath();
                    ctxChirho.arc(10, -3, 2, 0, Math.PI*2);
                    ctxChirho.fill();
                } else {
                    // Draw Rock
                    ctxChirho.fillStyle = this.colorChirho;
                    ctxChirho.beginPath();
                    ctxChirho.moveTo(-20, 20);
                    ctxChirho.lineTo(20, 20);
                    ctxChirho.lineTo(10, -20);
                    ctxChirho.lineTo(-15, -15);
                    ctxChirho.closePath();
                    ctxChirho.fill();
                }
                ctxChirho.restore();
            }
        }

        function resizeChirho() {
            widthChirho = window.innerWidth;
            heightChirho = window.innerHeight;
            canvasChirho.width = widthChirho;
            canvasChirho.height = heightChirho;
            boatXChirho = widthChirho / 2;
            boatYChirho = 100;
        }

        function initChirho() {
            resizeChirho();
            objectsChirho = [];

            // Add Fish
            for(let iChirho=0; iChirho<10; iChirho++) objectsChirho.push(new GameObjChirho(''fish''));
            // Add Rocks
            for(let iChirho=0; iChirho<6; iChirho++) objectsChirho.push(new GameObjChirho(''rock''));

            // Timer
            const timerIntervalChirho = setInterval(() => {
                if (!gameRunningChirho) {
                    clearInterval(timerIntervalChirho);
                    return;
                }
                timeLeftChirho--;
                timerElChirho.textContent = `Time: ${timeLeftChirho}`;
                if (timeLeftChirho <= 0) endGameChirho(false);
            }, 1000);

            loopChirho();
        }

        function updateHookChirho() {
            if (hookChirho.state === ''SWINGING'') {
                hookChirho.angle += SWING_SPEED_CHIRHO * swingDirChirho;
                if (hookChirho.angle > Math.PI - 0.2 || hookChirho.angle < 0.2) swingDirChirho *= -1;
                // Hook tip position
                hookChirho.x = boatXChirho + Math.cos(hookChirho.angle) * 50;
                hookChirho.y = boatYChirho + Math.sin(hookChirho.angle) * 50;
            }
            else if (hookChirho.state === ''SHOOTING'') {
                hookChirho.len += HOOK_SPEED_CHIRHO;
                hookChirho.x = boatXChirho + Math.cos(hookChirho.angle) * hookChirho.len;
                hookChirho.y = boatYChirho + Math.sin(hookChirho.angle) * hookChirho.len;

                // Bounds check
                if (hookChirho.x < 0 || hookChirho.x > widthChirho || hookChirho.y > heightChirho) {
                    hookChirho.state = ''REELING'';
                }

                // Collision check
                for (let objChirho of objectsChirho) {
                    if (!objChirho.caughtChirho) {
                        const dxChirho = hookChirho.x - objChirho.xChirho;
                        const dyChirho = hookChirho.y - objChirho.yChirho;
                        if (Math.sqrt(dxChirho*dxChirho + dyChirho*dyChirho) < objChirho.sizeChirho + 10) {
                            // CAUGHT!
                            objChirho.caughtChirho = true;
                            hookChirho.targetObj = objChirho;
                            hookChirho.state = ''REELING'';

                            if (objChirho.typeChirho === ''fish'') {
                                catchSynthChirho.triggerAttackRelease(["C5", "E5"], "8n");
                            } else {
                                clunkSynthChirho.triggerAttackRelease("A1", "4n");
                            }
                            break;
                        }
                    }
                }
            }
            else if (hookChirho.state === ''REELING'') {
                let speedChirho = REEL_SPEED_FAST_CHIRHO;
                if (hookChirho.targetObj && hookChirho.targetObj.typeChirho === ''rock'') {
                    speedChirho = REEL_SPEED_SLOW_CHIRHO; // Heavy!
                }

                hookChirho.len -= speedChirho;
                hookChirho.x = boatXChirho + Math.cos(hookChirho.angle) * hookChirho.len;
                hookChirho.y = boatYChirho + Math.sin(hookChirho.angle) * hookChirho.len;

                if (hookChirho.len <= 50) {
                    // Fully reeled in
                    hookChirho.len = 50;
                    hookChirho.state = ''SWINGING'';

                    if (hookChirho.targetObj) {
                        if (hookChirho.targetObj.typeChirho === ''fish'') {
                            scoreChirho++;
                            scoreElChirho.textContent = `Souls Saved: ${scoreChirho}`;
                            winSynthChirho.triggerAttackRelease("C6", "16n");
                        }
                        // Remove object from array
                        objectsChirho = objectsChirho.filter(o => o !== hookChirho.targetObj);
                        hookChirho.targetObj = null;

                        // Check Win
                        const remainingFish = objectsChirho.filter(o => o.typeChirho === ''fish'').length;
                        if (remainingFish === 0) endGameChirho(true);
                    }
                }
            }
        }

        function loopChirho() {
            if (!gameRunningChirho) return;

            ctxChirho.clearRect(0, 0, widthChirho, heightChirho);

            // Draw Sky/Water line
            ctxChirho.fillStyle = ''#0ea5e9''; // Sky
            ctxChirho.fillRect(0, 0, widthChirho, boatYChirho + 20);
            ctxChirho.fillStyle = ''#0369a1''; // Deep water
            ctxChirho.fillRect(0, boatYChirho + 20, widthChirho, heightChirho);

            updateHookChirho();

            // Draw Line
            ctxChirho.beginPath();
            ctxChirho.moveTo(boatXChirho, boatYChirho);
            ctxChirho.lineTo(hookChirho.x, hookChirho.y);
            ctxChirho.strokeStyle = ''#fff'';
            ctxChirho.lineWidth = 2;
            ctxChirho.stroke();

            // Draw Hook
            ctxChirho.beginPath();
            ctxChirho.arc(hookChirho.x, hookChirho.y, 5, 0, Math.PI*2);
            ctxChirho.fillStyle = ''silver'';
            ctxChirho.fill();

            // Draw Boat
            ctxChirho.fillStyle = ''#78350f'';
            ctxChirho.beginPath();
            ctxChirho.arc(boatXChirho, boatYChirho, 40, 0, Math.PI, false);
            ctxChirho.fill();
            // Mast
            ctxChirho.beginPath();
            ctxChirho.moveTo(boatXChirho, boatYChirho);
            ctxChirho.lineTo(boatXChirho, boatYChirho - 50);
            ctxChirho.strokeStyle = ''#3f1d08'';
            ctxChirho.lineWidth = 4;
            ctxChirho.stroke();

            // Draw Objects
            objectsChirho.forEach(objChirho => {
                objChirho.updateChirho();
                objChirho.drawChirho();
            });

            requestAnimationFrame(loopChirho);
        }

        function endGameChirho(winChirho) {
            gameRunningChirho = false;
            gameOverElChirho.style.display = ''flex'';
            if (winChirho) {
                endTitleElChirho.textContent = "HALLELUJAH!";
                endTitleElChirho.style.color = "#facc15";
                finalScoreElChirho.textContent = "The Net is Full!";
            } else {
                endTitleElChirho.textContent = "LEFT BEHIND";
                endTitleElChirho.style.color = "#f97316";
                finalScoreElChirho.textContent = `But ${scoreChirho} souls saved!`;
            }
        }

        // --- Interaction ---
        window.addEventListener(''resize'', resizeChirho);

        function handleInputChirho() {
            if (Tone.context.state !== ''running'') Tone.start();

            if (hookChirho.state === ''SWINGING'') {
                hookChirho.state = ''SHOOTING'';
                castSynthChirho.triggerAttackRelease("C4", "32n");
            }
        }

        window.addEventListener(''click'', handleInputChirho);
        window.addEventListener(''touchstart'', (e) => {
            e.preventDefault();
            handleInputChirho();
        }, { passive: false });
        window.addEventListener(''keydown'', (e) => {
            if (e.code === ''Space'' || e.code === ''ArrowDown'') handleInputChirho();
        });

        initChirho();
    </script>
</body>
</html>
EOF
    echo "✅ Created ''Fisher of Men'' game for session 1."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week18-session1-chirho.sh',
  181,
  1,
  1766545676,
  1766545676
);

-- Payload: Week 18 Session 2 (payload-week18-session2-chirho.sh)
INSERT INTO payloads_chirho (
  payload_id_chirho, name_chirho, description_chirho, version_chirho,
  script_content_chirho, script_type_chirho, execution_command_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'tYb1TqCtloEghZHksX7TK',
  'Week 18 Session 2',
  'Payload for Sonshine Programming Class Chirho: Week 18, Session 2',
  '1.0.0',
  '#!/bin/bash
# "I have fought a good fight, I have finished my course, I have kept the faith." (2 Timothy 4:7 KJV)
# Payload for Sonshine Programming Class Chirho: Week 18, Session 2
# This script creates "The Faithful Servant''s Award" graduation app.

# --- Output initial messages ---
echo "Payload for Week 18 Session 2"
echo "Timestamp: $(date +"%Y-%m-%d %r %Z")"
echo "---"

# --- Define variables ---
SESSION_DIR_CHIRHO="$HOME/Downloads/cp-chirho/week-18-chirho/session-2-chirho"
TARGET_HTML_FILE_CHIRHO="$SESSION_DIR_CHIRHO/index.html"
TARGET_APP_FILE_CHIRHO="$SESSION_DIR_CHIRHO/graduation-chirho.html"

# --- Main logic ---
mkdir -p "$SESSION_DIR_CHIRHO"

# ==============================================================================
# === SESSION 2: "The Faithful Servant''s Award" (Graduation) ===================
# ==============================================================================

# --- 1. Create the HTML instructional file ---
if [[ ! -f "$TARGET_HTML_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_HTML_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sonshine Programming Class - Graduation</title>
    <style>
        body { font-family: system-ui, sans-serif; background-color: #fdfbf7; color: #333; line-height: 1.7; padding: 20px; }
        #container-chirho { max-width: 800px; margin: 20px auto; background-color: white; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); padding: 20px 40px; border: 4px double #d4af37; }
        h1 { color: #d4af37; text-align: center; text-transform: uppercase; letter-spacing: 2px; }
        p.verse-chirho { text-align: center; font-style: italic; font-size: 1.2em; background-color: #fffbeb; padding: 20px; border-radius: 8px; border-left: 4px solid #d4af37; color: #78350f; }
        .mission-brief { background-color: #f0fdf4; border: 2px solid #16a34a; padding: 15px; border-radius: 8px; margin-top: 20px; }
        .coin-alert { font-weight: bold; color: #15803d; text-align: center; display: block; margin-top: 10px; font-size: 1.2em; }
    </style>
</head>
<body>
    <div id="container-chirho">
        <h1>The Final Course 🏁</h1>
        <p>Hallelujah! You have reached the final session. You have learned servers, databases, security, logic, and design.</p>
        <p class="verse-chirho">"I have fought a good fight, I have finished my course, I have kept the faith." - 2 Timothy 4:7</p>

        <div class="mission-brief">
            <strong>YOUR FINAL MISSION:</strong>
            <p>Open the <code>graduation-chirho.html</code> app.</p>
            <ol>
                <li><strong>Try to Generate:</strong> Enter your name and click the button. Notice the problem? It prints "Unknown Servant" instead of your name!</li>
                <li><strong>Fix the Code:</strong> Open the file in your editor. Find the <code>drawCertificateChirho</code> function.</li>
                <li><strong>Debug:</strong> Locate the variable <code>nameToPrintChirho</code>. It is hardcoded! Change it to use the value from the input box.</li>
                <li><strong>Celebrate:</strong> Generate your certificate, enjoy the fireworks, and download your award!</li>
            </ol>
            <span class="coin-alert">🏆 Everyone who completes the course gets a Quest Coin!</span>
        </div>

        <h2>How to Run</h2>
        <p>Simply open the file in your browser:</p>
        <pre><code># On Mac/Linux
open graduation-chirho.html</code></pre>
        <p>Or drag the file into your browser window.</p>
    </div>
</body>
</html>
EOF
    echo "✅ Created instructional file: $TARGET_HTML_FILE_CHIRHO"
fi

# --- 2. Create the Graduation App file ---
if [[ ! -f "$TARGET_APP_FILE_CHIRHO" ]]; then
    cat << ''EOF'' > "$TARGET_APP_FILE_CHIRHO"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Certificate of Completion</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tone/14.7.77/Tone.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.6.0/dist/confetti.browser.min.js"></script>
    <!-- Importing a fancy font -->
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;700&family=Great+Vibes&display=swap" rel="stylesheet">
    <style>
        body { margin: 0; background-color: #2c3e50; font-family: ''Segoe UI'', sans-serif; display: flex; flex-direction: column; align-items: center; min-height: 100vh; padding: 20px; }

        #controls-chirho {
            background: white; padding: 20px; border-radius: 10px; margin-bottom: 20px;
            display: flex; gap: 10px; box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }

        input { padding: 10px; font-size: 1.2em; border: 2px solid #ccc; border-radius: 5px; width: 300px; }

        button {
            padding: 10px 20px; font-size: 1.2em; background-color: #d4af37; color: white;
            border: none; border-radius: 5px; cursor: pointer; font-weight: bold;
            transition: transform 0.1s;
        }
        button:hover { transform: scale(1.05); background-color: #b5952f; }

        canvas {
            background-color: white;
            box-shadow: 0 10px 30px rgba(0,0,0,0.5);
            max-width: 90%;
            height: auto;
        }

        .download-link { margin-top: 20px; color: #d4af37; text-decoration: none; font-size: 1.2em; display: none; }
        .download-link:hover { text-decoration: underline; }
    </style>
</head>
<body>

    <div id="controls-chirho">
        <input type="text" id="name-input-chirho" placeholder="Enter Your Name">
        <button onclick="generateCertificateChirho()">Receive Award</button>
    </div>

    <canvas id="cert-canvas-chirho" width="1000" height="700"></canvas>
    <a id="download-btn-chirho" class="download-link" href="#" download="My_Certificate.png">Download Certificate ⬇️</a>

    <script>
        // "I have finished my course..." (2 Timothy 4:7)

        const canvasChirho = document.getElementById(''cert-canvas-chirho'');
        const ctxChirho = canvasChirho.getContext(''2d'');
        const nameInputChirho = document.getElementById(''name-input-chirho'');
        const downloadBtnChirho = document.getElementById(''download-btn-chirho'');

        // Load Audio
        const fanfareSynthChirho = new Tone.PolySynth(Tone.Synth).toDestination();

        function drawBorderChirho() {
            // Gold border
            ctxChirho.lineWidth = 20;
            ctxChirho.strokeStyle = ''#d4af37'';
            ctxChirho.strokeRect(20, 20, canvasChirho.width - 40, canvasChirho.height - 40);

            // Inner thin line
            ctxChirho.lineWidth = 2;
            ctxChirho.strokeRect(35, 35, canvasChirho.width - 70, canvasChirho.height - 70);

            // Corners
            ctxChirho.fillStyle = ''#d4af37'';
            ctxChirho.fillRect(10, 10, 40, 40);
            ctxChirho.fillRect(canvasChirho.width - 50, 10, 40, 40);
            ctxChirho.fillRect(10, canvasChirho.height - 50, 40, 40);
            ctxChirho.fillRect(canvasChirho.width - 50, canvasChirho.height - 50, 40, 40);
        }

        function drawTextChirho(nameChirho) {
            ctxChirho.textAlign = ''center'';

            // Header
            ctxChirho.fillStyle = ''#333'';
            ctxChirho.font = ''bold 60px "Cinzel", serif'';
            ctxChirho.fillText(''Certificate of Completion'', canvasChirho.width / 2, 150);

            // Subtitle
            ctxChirho.font = ''30px "Segoe UI", sans-serif'';
            ctxChirho.fillText(''is hereby awarded to the faithful student'', canvasChirho.width / 2, 220);

            // --- NAME (The Bug is Here!) ---
            ctxChirho.font = ''italic 80px "Great Vibes", cursive'';
            ctxChirho.fillStyle = ''#1e3a8a''; // Royal Blue

            // THE BUG: It ignores the ''nameChirho'' parameter!
            // THE FIX: Change "Unknown Servant" to nameChirho
            const nameToPrintChirho = "Unknown Servant";

            ctxChirho.fillText(nameToPrintChirho, canvasChirho.width / 2, 350);

            // Line under name
            ctxChirho.beginPath();
            ctxChirho.moveTo(200, 370);
            ctxChirho.lineTo(800, 370);
            ctxChirho.strokeStyle = ''#333'';
            ctxChirho.lineWidth = 2;
            ctxChirho.stroke();

            // Class Title
            ctxChirho.fillStyle = ''#333'';
            ctxChirho.font = ''bold 40px "Cinzel", serif'';
            ctxChirho.fillText(''Sonshine Programming Class'', canvasChirho.width / 2, 450);

            // Verse
            ctxChirho.font = ''italic 20px "Segoe UI", sans-serif'';
            ctxChirho.fillStyle = ''#555'';
            ctxChirho.fillText(''"Well done, thou good and faithful servant." - Matthew 25:21'', canvasChirho.width / 2, 520);

            // Signatures
            ctxChirho.font = ''20px "Cinzel", serif'';
            ctxChirho.fillStyle = ''#333'';
            ctxChirho.fillText(''_________________________'', 250, 600);
            ctxChirho.fillText(''Instructor'', 250, 630);

            ctxChirho.fillText(''_________________________'', 750, 600);
            ctxChirho.fillText(''Date: 2025'', 750, 630);

            // Seal
            ctxChirho.beginPath();
            ctxChirho.arc(canvasChirho.width / 2, 600, 50, 0, Math.PI * 2);
            ctxChirho.fillStyle = ''#b91c1c''; // Red wax
            ctxChirho.fill();
            ctxChirho.fillStyle = ''#fff'';
            ctxChirho.font = ''bold 40px serif'';
            ctxChirho.fillText(''☧'', canvasChirho.width / 2, 615); // Chirho symbol
        }

        function generateCertificateChirho() {
            if (Tone.context.state !== ''running'') Tone.start();

            const nameChirho = nameInputChirho.value;
            if (!nameChirho) {
                alert("Please enter your name!");
                return;
            }

            // Clear Canvas
            ctxChirho.clearRect(0, 0, canvasChirho.width, canvasChirho.height);
            ctxChirho.fillStyle = ''#fff'';
            ctxChirho.fillRect(0, 0, canvasChirho.width, canvasChirho.height);

            // Draw
            drawBorderChirho();
            drawTextChirho(nameChirho);

            // Celebrate!
            confetti({ particleCount: 200, spread: 100, origin: { y: 0.6 } });

            // Play Fanfare
            const now = Tone.now();
            fanfareSynthChirho.triggerAttackRelease(["C4", "E4", "G4", "C5"], "2n", now);
            fanfareSynthChirho.triggerAttackRelease(["G3", "B3", "D4", "G4"], "1n", now + 0.5);

            // Enable Download
            const dataUrlChirho = canvasChirho.toDataURL(''image/png'');
            downloadBtnChirho.href = dataUrlChirho;
            downloadBtnChirho.style.display = ''block'';
        }

        // Initial empty draw
        ctxChirho.fillStyle = ''#fff'';
        ctxChirho.fillRect(0, 0, canvasChirho.width, canvasChirho.height);
        drawBorderChirho();

    </script>
</body>
</html>
EOF
    echo "✅ Created Graduation App for session 2."
fi

echo "---"
echo "Payload complete! Hallelujah!"
',
  'bash',
  'bash payload-week18-session2-chirho.sh',
  182,
  1,
  1766545676,
  1766545676
);

COMMIT;

-- Import complete!