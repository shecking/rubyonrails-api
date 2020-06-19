# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :users, except: %i[new edit]
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/register' => 'users#register'
  post '/login' => 'users#login'
  delete '/sign-out' => 'users#signout'
  patch '/changepw' => 'users#changepw'
end
