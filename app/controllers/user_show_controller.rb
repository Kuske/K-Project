class UserShowController < ApplicationController
  def show
      @user=User.find(params[:username])
      render "user_show/user_show"
  end
end
