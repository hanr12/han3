---
toc: true
comments: false
layout: post
title: Quick Draw Game
type: hacks
courses: { compsci: {week: 3} }
---

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quick Draw Game</title>
    <style>
        #canvas {
            border: 2px solid #000;
        }
    </style>
</head>
<body>
    <h1>Quick Draw Game</h1>
    <p id="instruction">Draw a shape: <span id="shape"></span></p>
    <p id="feedback"></p>
    <p>Time left: <span id="timer">30</span> seconds</p>
    <p>Correct Shapes: <span id="correctCount">0</span></p> <!-- Added counter display -->
    <canvas id="canvas" width="400" height="400"></canvas>
    <script>
        const canvas = document.getElementById("canvas");
        const ctx = canvas.getContext("2d");
        const shapes = ["square", "circle", "triangle", "star", "heart", "arrow"]; // Add more shapes here
        let currentShape = "";
        let isDrawing = false;
        let timer = 30;
        let correctCount = 0; // Initialize the counter
        // Function to choose a random shape
        function chooseShape() {
            const randomIndex = Math.floor(Math.random() * shapes.length);
            currentShape = shapes[randomIndex];
            document.getElementById("shape").textContent = currentShape;
            // Clear the canvas
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            // Start drawing the new shape
            ctx.beginPath();
        }
        // Function to update the timer
        function updateTimer() {
            document.getElementById("timer").textContent = timer;
            if (timer === 0) {
                clearInterval(interval);
                canvas.removeEventListener("mousedown", startDrawing);
                canvas.removeEventListener("mouseup", stopDrawing);
                canvas.removeEventListener("mousemove", draw);
                alert("Time's up!");
            }
            timer--;
        }
        // Function to start drawing
        function startDrawing() {
            isDrawing = true;
        }
        // Function to stop drawing
        function stopDrawing() {
            isDrawing = false;
            checkDrawing();
        }
        // Function to draw on the canvas
        function draw(e) {
            if (!isDrawing) return;
            ctx.lineWidth = 5;
            ctx.lineCap = "round";
            ctx.strokeStyle = "#000";
            ctx.lineTo(e.clientX - canvas.getBoundingClientRect().left, e.clientY - canvas.getBoundingClientRect().top);
            ctx.stroke();
        }
        // Function to check if the user's drawing matches the expected shape
        function checkDrawing() {
            const drawnShape = currentShape; // For simplicity, we assume the user drew the same shape name
            if (currentShape === drawnShape) {
                document.getElementById("feedback").textContent = "Correct!";
                correctCount++; // Increment the counter
                document.getElementById("correctCount").textContent = correctCount; // Update the counter display
            } else {
                document.getElementById("feedback").textContent = "Incorrect. Try again.";
            }
            setTimeout(() => {
                document.getElementById("feedback").textContent = "";
                chooseShape(); // Choose a new shape for the next round
                timer = 30; // Reset the timer
            }, 2000); // Display feedback for 2 seconds before moving to the next shape
        }
        // Event listeners for drawing
        canvas.addEventListener("mousedown", startDrawing);
        canvas.addEventListener("mouseup", stopDrawing);
        canvas.addEventListener("mousemove", draw);
        // Start the game
        chooseShape(); // Choose the initial shape
        const interval = setInterval(() => {
            chooseShape(); // Choose a new shape for the next round
            timer = 30; // Reset the timer
        }, 30000); // Change shapes every 30 seconds
        setInterval(updateTimer, 1000); // Start the timer
    </script>
</body>
</html>