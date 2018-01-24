Rails.application.routes.draw do
  get'/show/:username'=>'user_show#show'
  root'application#justsayinghello'
end
