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
    i=0
    while i<1e6
      break if !User.find_by(userid:i)
      i+=1
    end
    @user=User.new(params.require(:user).permit(:username,:comment,:password,:password_confirmation))
    @user[:userid]=i
    @user.save
    redirect_to "/show/%d" %[@user[:userid]]
  end
end
