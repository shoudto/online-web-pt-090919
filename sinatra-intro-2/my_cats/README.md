REVIEW FROM OUR LAST LECTURE:

# What is the internet?
## "a series of tubes"
## a series of underground connections connecting machines at distinct IP addresses

# What is the world wide web and what/who is it designed for?
## sits on top of the internet
## connects servers and clients
## clients are web browsers
## connects people/users to resources

# What is a web framework?
## packaged way of making dynamic website

# What's in the package?
## methods
## classes
## wrapped into a gem (in Ruby)

# What is a dynamic website? (vs static)
## A site that dynamically presents information based on user interaction

# What is the MVC framework?
## M - models - manages the data stored in the db (backend)
## V - views - handles what the user sees (frontend)
## C - controllers - handles routing (connection between frontend and backend)

# How does the user tell the server what data to get?
## URI => the URI entered is mapped to a certain server and resource
## i.e. 'weather.com/philadelphia' maps me to a weather.com server and 'philadelphia' resource
## => when I navigate to this URI I would expect to see the weather specific to philadelphia

# What two types of HTTP requests do we need?
## GET => requests information from a server => read data in the db
## POST => giving information to a server => create, update, or delete data in the db

NOT COVERED IN OUR LAST LECTURE:

# What is REST?
## REpresentational State Transfer
## Principles:
### Give every resource a unique ID
### Create links among resources
### Use standardized HTTP verbs (get and post)
### Allow resources to be requested in multiple formats
### Communicate statelessly

# The takeaway?
## Adhering to conventions, best practices, and protocols lets us send and receive information effectively on the web

We will learn about REST more in the Rails section!

