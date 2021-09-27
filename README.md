# Let's clean your bathroom! 

For this project, I created a game with that give the player a time limit to clean up their bathroom. This is a single page application using vanilla JavaScript as the front end language, and Rails as the back end. 


The models used 

User:
-username
-has_many High_scores

High_scores:
-points
-belongs_to User

The point of this game is to accrue as many points as you can before the time runs out! Once the game is over, the user's score is rendered on a modal that lists all their scores for every attempt playing the game (unless they already scored that many points, or scored 0 points).

There are four fetch calls being made
* When you create a user or log in as an existing one
* When the game ends all the points are added up and created + saved to the user (if those points don't already exist)
* At the end of the game, all the user's scores are rendered onto the modal that pops up
* On the main page, you can see every user that scored 700 + points


# For better usability, play this game on a fullscreen 


The front end repo for this game is here:
https://github.com/RaquelFraktas/clean_your_bathroom_frontend