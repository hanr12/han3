---
toc: False
layout: post
hide: false
title: CPT Individual Review Blog
courses: {'compsci': {'week': 17}}
type: hacks
---
## Project Overview
My team and I decided to create a website that focuses on the improvement of mental health for teenagers. We have different features that help with the organization of plans and emotions as well as a few feautures that help with figetting.

## My feature
My feature helps with organizing ones schedule. The schedule is a list that has days named from sunday through saturday and it gives you the option to fill out what you are planning to do in the morning, noon, and afternoon. By being able to plan out one's schedule like this, they are able to work towards that goal and hopefully improve their own work habits. 

## Team Contributions
- Isabelle and I both worked on the frontend so we made the look of both the login and the sign up page as well as the SASS styling for the entire website. We also worked on a few features including the daily agenda and the mood tracker
- Vidha and Prakruti both worked on the backend while focusing on the api function for the login page as well as the apis for their personal features on the page

## College Board Requirements
<html>
<body>
<!--StartFragment-->
College board | Our Project
-- | --
Instructions for input from one of the following: the user, a device, an online data stream, a file. | We require JWT tokens and credentials (that can be created in the signup) for a user to login
Use of at least one list (or other collection type) to represent a collection of data that is stored and used to manage program complexity and help fulfill the users purpose. | We use SQLite tables to store and manage data about users and messages.
At least one procedure that contributed to the program’s intended purpose where you have defined: the name, return type, one or more parameters. | We have procedures for user authentication and authorization, which take JWT tokens and user credentials as parameters.
An algorithm that includes sequencing, selection, and iteration that is in the body of the selected procedure. | Our authentication algorithm meets these requirements by including sequencing (checking JWT token and cookies), and selection (redirecting or allowing to update or delete users based on user or admin status).
Calls to your student-developed procedure. | Our procedures for user related functions, scores, and messages are called throughout the application.
Instructions for output (tactile, audible, visual, or ) based on input and program functionality. | Login redirects users, games are manipulated by user, messages are typed by user, and all of these have visual responses

<!--EndFragment-->
</body>
</html>

## Code
![code](<Screenshot 2024-02-27 073700.png>)
- This if function checks to see whether there was an error or if the new account has been given permission and will be forwarded to the login.

![code 2](<Screenshot 2024-02-27 074930.png>)
- Calls to your student-developed procedure