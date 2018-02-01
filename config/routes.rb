Rails.application.routes.draw do
  root'user_show#signup'
  get'/show/:userid'=>'user_show#show'
<<<<<<< HEAD
=======
  #アドレスがshow/numだったときにuseridにnumが代入され、user_show_controllerのshow関数に移動される
  root'application#justsayinghello'
  #もしなにもなかったらapplication controllerのjustsaying hello関数に移動
>>>>>>> 083bd15320d15a9f66b1db51bd01368ec63ccfc8
end
