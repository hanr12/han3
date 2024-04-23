---
toc: True
comments: False
layout: post
title: Accomplishments
type: tangibles
---

<html>
  <body>
    <table border="1">
      <tr>
        <th>Accomplishments</th>
        <th>Could Have Done Better</th>
      </tr>
      <tr>
        <td>Instructions for input from one of the following: the user, a device, an online data stream, a file.</td>
        <td>Uses HTML input field and a text area to take input from the user. The user can then input any quote they want, the euthor, and then what they think of it.</td>
      </tr>
      <tr>
        <td>Use of at least one list (or other collection type) to represent a collection of data that is stored and used to manage program complexity and help fulfill the users purpose.</td>
        <td>The quoteObject is tructured as an object, which can be considered a form of collection. The Fetch API sends the quoteObject which is the data collection to the server for storage, demonstrating the use of data collection for program functionality</td>
      </tr>
      <tr>
        <td>At least one procedure that contributed to the program’s intended purpose where you have defined: the name, return type, one or more parameters.</td>
        <td>The code constructs a quoteObject by gathering data from the input fields. The data is organized into an objecr for further use</td>
      </tr>
      <tr>
        <td>An algorithm that includes sequencing, selection, and iteration that is in the body of the selected procedure.</td>
        <td>-This code constructs an object for the quote called quoteObject which gathers data from the input fields.</td>
      </tr>
      <tr>
        <td>Calls to your student-developed procedure.</td>
        <td>This calls to the backend for submitting a quote. The submitQuote utilizes the Fetch API which then sends the quoteObject to the server to be stored in the db.</td>
      </tr>
      <tr>
        <td>Instructions for output (tactile, audible, visual, or ) based on input and program functionality.</td>
        <td>This code has a conditional structure where if the server response is successful with the code .then an alert will show a message but if there was an error with it then an error message will show up on the screen.</td>
      </tr>
    </table>
  </body>
</html>