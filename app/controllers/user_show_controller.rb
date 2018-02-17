class UserShowController < ApplicationController
  def show
      @user=User.find_by(userid:params[:userid])
      render "/user_show/user_show"
  end
  def signup
    @user=User.new
  end

  def login
    @user=User.new
    render"/user_show/login"
  end

  def logincheck
    user=User.find_by(username: params[:username])#Search the user that has that username
    puts user[:username]
    if(user && user.authenticate(user[:password]))
      redirect_to "/show/%d" %[@user[:userid]]
    else
      login
    end
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
  def user_params
   params.require(:user).permit(:name, :comment, :password, :password_confirmation)
  end
end
