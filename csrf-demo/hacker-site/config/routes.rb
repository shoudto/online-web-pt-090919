Rails.application.routes.draw do
  get '/posts', to: 'posts#index'
  get '/evil', to: 'posts#evil', as: 'evil'
  match '/curl_example' => 'request_example#curl_get_example', via: :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
