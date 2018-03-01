# Progress Tracker

![Progress Tracker](https://i.imgur.com/cxO67B5.png)

Progress Tracker is an app that allows you to visually track your progress. Whether you are working on losing weight, drawing a portrait, planting flowers.. track your progress by uploading an image for each step of the way. Your profile will consist of all your uploads where users can browse your images adn display each one individually viewing the image, the date and the description you provided for your progress image. 

[Check it out](https://lit-hollows-51505.herokuapp.com/).



### Technology

- Ruby on Rails (Ruby version 2.4.1, Rails version 5.1.4)
- Postgresql
- Bcrpyt (ruby gem for the encryption of passwords)
- Bootstrap (version 4.0)
- HTML
- CSS/SASS



### Approach

Planning for this app included creating a basic wireframe for overall app layout (wireframe included in trello), an ERD diagram displaying the models, followed by the creation of **user stories** using [Trello](https://trello.com/b/cmocASxM/project-2-full-stack-web-app).



### Installation/Startup Instructions

- Download the repository from Github to a local directory
- Open up the project directory in terminal and run  `bundle install` to install any gems needed
- Start Postgres local server
- In terminal, run `rails db:migrate` to migrate the app's existing tables on Postgresql
- In terminal, run `rails server` to start a local server so you can view the application locally
- In the address bar of your browser, go to localhost:3000
- You have now launched the app locally. Create users and add images as you wish



### Unresolved Issues

-CSS styling for images is not consistent.
-Date display is currently YYYY/DD/MM. Want it to become DD/MM/YYY.



### Future Features and Functionality

Additional features and functionality that are intended to be built into this app in the future are included on the Icebox list on [Trello](https://trello.com/b/cmocASxM/project-2-full-stack-web-app), which includes but is not limited to:

- Additional models to be built.
- Users will be able to comment on images and message each other privately.
- Revise styling specifically for image displays.


### Technical Requirements

- Two models: User and Image (ERD included in [Trello](https://trello.com/b/cmocASxM/project-2-full-stack-web-app))
- Sign up/log in functionality with authentication - users also have restricted access based on their user_type
- Complete RESTful routes for both models
- Full CRUD for both models, with restrictions
- Semantically clean HTML and CSS.
- Deployed online via Heroku