Rails.application.routes.draw do
  get'/show/:userid'=>'user_show#show'
  #アドレスがshow/numだったときにuseridにnumが代入され、user_show_controllerのshow関数に移動される
  root'application#justsayinghello'
  #もしなにもなかったらapplication controllerのjustsaying hello関数に移動
end
