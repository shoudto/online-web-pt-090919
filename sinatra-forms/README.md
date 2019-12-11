# Build a Sinatra App to let a user manipulate data from a db!

# Steps
1. Ensure directory structure is correct for MVC pattern
2. Migrate & Seed database
3. Plan CRUD Actions
4. Plan Routes
    * Index
    * Show
    * New
    * Edit
    * Create
    * Update
    * Delete
5. Build an index view to list all books
6. Build a new book form that makes a post request to `/books` and use params to create entry in db

# What is CRUD?
* basic actions that a user can use to interact with the database
* create, read, update, delete

# What is REST?

## REpresentational State Transfer principles:
* Give every resource a unique ID
* Create links among resources
* Use standardized HTTP verbs (get and post)
* Allow resources to be requested in multiple formats
* Communicate statelessly
## The takeaway?
* Adhering to conventions, best practices, and protocols about structuring data lets us send and receive information effectively on the web

# Describe the HTTP Request Cycle
[look at diagram](https://github.com/allisonkadel/online-web-pt-090919/edit/master/sinatra-forms/Sinatra - HTTP Request Cycle.png)

# What are the RESTful routes? (url, http verb, and controller action)
*`/books` => `GET` => `index`
*`/books/:id` => `GET` => `show`
*`/books/:id` => `PUT` => `update`
*`/books/new` => `GET` => `new`
*`/books` => `POST` => `create`
