---
toc: true
comments: false
layout: post
title: Guessing Game
description: Example Plan!!! Analyze hacks and plan.
type: hacks
courses: { compsci: {week: 1} }
---

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guessing Game</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        #game-container {
            margin: 20px auto;
            max-width: 400px;
        }
    </style>
</head>
<body>
    <h1>Guessing Game</h1>
    <div id="game-container">
        <p>Guess a number between 1 and 100:</p>
        <input type="number" id="user-guess" min="1" max="100">
        <button id="guess-button">Submit Guess</button>
        <p id="message"></p>
    </div>

    <script>
        const secretNumber = Math.floor(Math.random() * 100) + 1;
        let attempts = 0;

        document.getElementById("guess-button").addEventListener("click", function() {
            const userGuess = parseInt(document.getElementById("user-guess").value);
            attempts++;

            if (userGuess === secretNumber) {
                document.getElementById("message").textContent = `Congratulations! You guessed the number ${secretNumber} in ${attempts} attempts.`;
                document.getElementById("guess-button").disabled = true;
            } else if (userGuess < secretNumber) {
                document.getElementById("message").textContent = "Try a higher number.";
            } else {
                document.getElementById("message").textContent = "Try a lower number.";
            }
        });
    </script>
</body>
</html>
