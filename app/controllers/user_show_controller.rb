class UserShowController < ApplicationController
  def show
      @user=User.find_by(userid:params[:userid])
      render "/user_show/user_show"
  end
  def signup
    @user=User.new
    #render "/user_show/signup"
  end
  def update
    @user=User.new(params.require(:user).permit(:username,:comment,:userid))
    @user.save
    @user.save
    redirect_to "/show/%d" %[@user[:userid]]
  end
end
