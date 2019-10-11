_to load our classes into a console to test out, run `ruby run.rb` in the terminal from the `
Ruby-OO-One-To-Many-Relationships` directory._

* Create a User class. The class should have these methods:
  * `User#initialize` which takes a username
  * `User#username` reader method
  * `User#tweets` that returns an array of Tweet instances
  * `User#post_tweet` that takes a message, creates a new tweet, and adds it to the user's tweet collection
* Create a Tweet class. The class should have these methods:
  * `Tweet#initialize` which takes a message and an instance of a user
  * `Tweet#message` that returns a string
  * `Tweet#user` that returns an instance of the user class
  * `Tweet.all` that returns all the Tweets created.
  * `Tweet#username` that returns the username of the tweet's user
  
* Relationships
  * User has many Tweets
  * Tweet belongs to a User
  * Group has many Tweets through Users
  * Tweets belongs a Group through Users
