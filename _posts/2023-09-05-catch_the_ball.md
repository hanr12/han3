---
toc: true
comments: false
layout: post
title: Catch the Ball
description: Catch the ball game
type: hacks
courses: { compsci: {week: 1} }
---
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catch the Ball Game</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        #game-container {
            margin: 100px auto;
        }
        #score {
            font-size: 24px;
        }
        .ball {
            width: 50px;
            height: 50px;
            background-color: #e74c3c;
            border-radius: 50%;
            position: absolute;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Catch the Ball Game</h1>
    <div id="game-container">
        <p>Click on the balls to catch them!</p>
        <p id="score">Score: 0</p>
    </div>

    <script>
        let score = 0;
        const gameContainer = document.getElementById("game-container");
        
        function createBall() {
            const ball = document.createElement("div");
            ball.classList.add("ball");
            ball.style.left = Math.random() * (gameContainer.clientWidth - 50) + "px";
            ball.style.top = Math.random() * (gameContainer.clientHeight - 50) + "px";
            ball.addEventListener("click", () => {
                gameContainer.removeChild(ball);
                score++;
                document.getElementById("score").textContent = `Score: ${score}`;
            });
            gameContainer.appendChild(ball);
        }
        
        setInterval(createBall, 1000);
    </script>
</body>
</html>
