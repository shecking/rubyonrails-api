# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :users, except: %i[new edit]
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/register' => 'users#register'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
