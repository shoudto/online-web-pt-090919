Rails.application.routes.draw do

#  resources :lists, only: :new => this line of code is generating:
  get '/lists', to: 'lists#new'
end
