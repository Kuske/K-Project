class UserShowController < ApplicationController
  def show
      @user=User.find_by(userid:params[:userid])
      render "/user_show/user_show"
  end
  def signup
    @user=User.new
  end

  def current_user_return
    return current_user
  end
  def login
    @user=User.new
    render"/user_show/login"
  end

  def logincheck
    puts "hello"
    puts params[:user][:username]
    puts "World"
    usernow=User.find_by(username: params[:user][:username])#Search the user that has that username
    if(usernow && usernow.authenticate(params[:user][:password]))
      log_in(usernow)
      redirect_to "/show/%d" %[usernow[:userid]]
    else
      redirect_to"/login"
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
