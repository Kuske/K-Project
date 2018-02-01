Rails.application.routes.draw do
  root'user_show#signup'
  get'/show/:userid'=>'user_show#show'
end
