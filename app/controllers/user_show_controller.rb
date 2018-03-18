class UserShowController < ApplicationController
  def show
    @user = User.find_by(userid: params[:useridParams])
    render '/user_show/user_show'
  end

  def signup
    @user = User.new
    render '/user_show/signup'
  end

  def current_user_return
    current_user
  end

  def login
    @user = User.new
    render '/user_show/login'
  end

  def logincheck
    usernow = User.find_by(username: params[:user][:username]) # Search the user that has that username
    if usernow && usernow.authenticate(params[:user][:password])
      @idnum = usernow[:userid]
      log_in(usernow)
      redirect_to format('/show/%d', usernow[:userid])
    else
      redirect_to '/login'
    end
  end

  def update
    i = 0
    while i < 1e6
      break unless User.find_by(userid: i)
      i += 1
    end
    @user = User.new(params.require(:user).permit(:username, :comment, :password, :password_confirmation))
    @user[:userid] = i
    @user.save
    redirect_to format('/show/%d', @user[:userid])
  end

  def user_params
    params.require(:user).permit(:name, :comment, :password, :password_confirmation)
  end
end
