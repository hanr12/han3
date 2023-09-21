---
toc: true
comments: false
layout: post
title: Statistical Calculator
type: hacks
courses: { compsci: {week: 5} }
---


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Statistical Calculator</title>
</head>
<body>
    <!-- Page Title -->
    <h1>Statistical Calculator</h1>
    <!-- Input for Numbers -->
    <label for="numbers">Enter numbers (comma-separated):</label>
    <input type="text" id="numbers" placeholder="e.g., 1, 2, 3, 4, 5">
    <!-- Button to Trigger Calculation -->
    <button onclick="calculateStatistics()">Calculate</button>
    <!-- Display Calculated Statistics -->
    <p>Mean: <span id="mean"></span></p>
    <p>Median: <span id="median"></span></p>
    <p>Standard Deviation: <span id="stdDev"></span></p>
    <!-- JavaScript Code for Calculation -->
    <script>
        // Function to calculate statistics when the button is clicked
        function calculateStatistics() {
            // Get user input from the 'numbers' input field
            const numbersInput = document.getElementById("numbers").value;
            // Split the input into an array of numbers
            const numbersArray = numbersInput.split(',').map(Number);
            // Calculate mean, median, and standard deviation
            const mean = calculateMean(numbersArray);
            const median = calculateMedian(numbersArray);
            const stdDev = calculateStandardDeviation(numbersArray);
            // Display the calculated values in the HTML
            document.getElementById("mean").textContent = mean.toFixed(2);
            document.getElementById("median").textContent = median.toFixed(2);
            document.getElementById("stdDev").textContent = stdDev.toFixed(2);
        }
        // Function to calculate the mean (average)
        function calculateMean(numbers) {
            const sum = numbers.reduce((acc, val) => acc + val, 0);
            return sum / numbers.length;
        }
        // Function to calculate the median
        function calculateMedian(numbers) {
            const sorted = numbers.sort((a, b) => a - b);
            const middle = Math.floor(sorted.length / 2);
            if (sorted.length % 2 === 0) {
                return (sorted[middle - 1] + sorted[middle]) / 2;
            } else {
                return sorted[middle];
            }
        }
        // Function to calculate the standard deviation
        function calculateStandardDeviation(numbers) {
            const mean = calculateMean(numbers);
            const squaredDifferences = numbers.map(num => Math.pow(num - mean, 2));
            const variance = calculateMean(squaredDifferences);
            return Math.sqrt(variance);
        }
    </script>
</body>
</html>
