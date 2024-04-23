---
toc: False
layout: post
hide: false
title: CPT Individual Review Blog
courses: {'compsci': {'week': 17}}
type: hacks
comments: true
---
## Project Overview
My team and I decided to create a website that focuses on the improvement of mental health for teenagers. We have different features that help with the organization of plans and emotions as well as a few feautures that help with figetting.

## My feature
My feature helps with organizing ones schedule. The schedule is a list that has days named from sunday through saturday and it gives you the option to fill out what you are planning to do in the morning, noon, and afternoon. By being able to plan out one's schedule like this, they are able to work towards that goal and hopefully improve their own work habits. 

## Team Contributions
- Isabelle and I both worked on the frontend so we made the look of both the login and the sign up page as well as the SASS styling for the entire website. We also worked on a few features including the daily agenda and the mood tracker
- Vidha and Prakruti both worked on the backend while focusing on the api function for the login page as well as the apis for their personal features on the page

## College Board Requirements
- ![image](https://github.com/hanr12/han3/assets/142542338/22d8be2b-ab6c-4bbc-9212-763407080530)
- ![image](https://github.com/hanr12/han3/assets/142542338/a7592e8e-7ccf-48d1-aec9-7b70ed901b38)
- ![image](https://github.com/hanr12/han3/assets/142542338/5bf7ed5f-bd5e-46f6-970f-eb963aa7f089)
- ![image](https://github.com/hanr12/han3/assets/142542338/23d9df56-2a0c-4d26-99b5-77d7a7ca9a95)
- ![image](https://github.com/hanr12/han3/assets/142542338/90c025d2-9d14-4414-9118-c5b587cb0993)
- ![image](https://github.com/hanr12/han3/assets/142542338/81d14f09-f3de-45bf-a59b-32789ef3fbdc)
- 
<html>
  <body>
    <table border="1">
      <tr>
        <th>College board</th>
        <th>Our Project</th>
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

## Refletion
Trimester 2 was very difficult for me. While I was in Lopez class I had no clue on what was wrong with my vscode for it to not be able to run ./migrate.sh. I asked Lopez about this issue but it was never resolved until tri 3. Due to this, I was only able to work on the frontend despite my past experiences in Tri 1 with the backend code.

I wasn't very experienced with frontend codes from APIs since I had never experimented with it before and it did not help that I could work with the backend code to check if the frontend code worked if I could not see the databases/ the databases didn't exist for me. Despite these setbacks, I made sure to contact people on what they were doing so that I could keep up with the things that they changed or added on to.

Given these circumstances, I tried my best to work with my teammates so that I could be able to test code with them and test that everything worked smoothly.