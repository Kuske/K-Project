Rails.application.routes.draw do
  get 'messages/new'

  resources :users
  post 'user_show/update' => 'user_show#update'
  post 'user_show/logincheck' => 'user_show#logincheck'
  get'/show/:useridParams' => 'user_show#show'
  get'/signup' => 'user_show#signup'
  get '/home' => 'home#initial'
  get '/login' => 'user_show#login'
  root 'home#initial'
end
