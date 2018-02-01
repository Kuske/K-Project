class UserShowController < ApplicationController
  def show
      @user=User.find_by(userid:params[:userid])
      render "/user_show/user_show"
  end
  def signup
    @user=User.new
    if @user.save
     redirect_to "show/0",notice:"completed."
    else
      render "/user_show/signup"
    end
  end
end
