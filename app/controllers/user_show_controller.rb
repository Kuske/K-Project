class UserShowController < ApplicationController
  def show
      @user=User.find_by(userid:params[:userid])
      #useridがパラメーターの時のUser（構造体みたいなもの）をuserに代入
      render "user_show/user_show"
      #viewsのuser_show.html.erbに移動
  end
end
