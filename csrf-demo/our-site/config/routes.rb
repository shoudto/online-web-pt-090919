Rails.application.routes.draw do
  resources :posts, only: [:destroy, :index]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
