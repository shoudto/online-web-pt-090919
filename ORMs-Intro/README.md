To test out SQL commands and Ruby methods we built, navigate to the root directory and run `rake console`. This will load a Pry environment with all of our code loaded.

WORKING WITH RELATIONAL DATABASES AND ORMS

what is a relational database and why is it useful?
- lets us persist data
- lets us create relationships among data (like we do in OO Ruby)

how do we create connections among our database tables?
- primary key and foreign key
- foreign key goes in belongs_to model
- owner has many cats
- cat belongs to owner

what are the 4 ways we can interact with data?
- return, read data - query data that meets certain requirements
- update data - make changes to existing data
- add, or create new data
- delete existing data
- CRUD! Create, Read, Update, Delete


how do we create a bridge or a mapping between sql and ruby? we want to be able to program in ruby but communicate with our database, which speaks sql
- use an ORM!

what is an orm used for?
- converting raw data from our db to objects
- creating a two way relatinship: sql to ruby and ruby to sql, raw data to objects and objects to raw data

how is it implemented?
- create ruby instance and class methods that execute sql that will perform the CRUD actions on our database

what are the conventions we should follow?
- classes correspond to tables
- instances correspond to row
- attributes correpond to columns

INITIAL SETUP FOR OUR ORM

1. setup database connection and environment file
2. setup classes
3. setup Rake task