Rails.application.routes.draw do
  resources :shelters
  resources :owners
  resources :cats
  root 'static#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
