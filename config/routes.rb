Rails.application.routes.draw do
  get'/show/:userid'=>'user_show#show'
  root'application#justsayinghello'
end
