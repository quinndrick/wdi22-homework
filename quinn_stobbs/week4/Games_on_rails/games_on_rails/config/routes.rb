Rails.application.routes.draw do

  root '/index' => 'pages#index'

  get '/index' => 'pages#index'

  get '/answers' => 'pages#answers'

  get '/magic' => 'pages#magic'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
