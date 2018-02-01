Rails.application.routes.draw do
  resources :users
  post 'user_show/update'=>'user_show#update'
  get'/show/:userid'=>'user_show#show'
  get'/signup'=>'user_show#signup'
  root 'application#justsayinghello'
end
