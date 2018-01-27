class UserShowController < ApplicationController
  def show
      @user=User.find_by(userid:params[:userid])
      render "user_show/user_show"
  end
end
