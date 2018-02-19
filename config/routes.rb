Rails.application.routes.draw do
  resources :users
  post 'user_show/update'=>'user_show#update'
  post 'user_show/login'=>'user_show#logincheck'
  get'/show/:userid'=>'user_show#show'
  get'/signup'=>'user_show#signup'
  get '/home'=>'home#initial'
  get '/login'=>'user_show#login'
  root 'home#initial'
end
