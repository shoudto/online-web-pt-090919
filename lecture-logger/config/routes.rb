Rails.application.routes.draw do
  get '/lectures', to: 'lectures#index'
  # resources :lectures => this will generate all the CRUD routes for the lecture model
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# create a schema
# create an index action that will display all of the lectures with their names and descriptions when someone visits localhost:3000/lectures

# What we need:
### a Lecture model
### a lectures database table - column names: name and description
### a LectureController - index action
### a lecture view saved as views/lectures/index.html.erb
### a route - verb/type of request: 'get', action: 'index', route: '/lectures', controller: LectureController