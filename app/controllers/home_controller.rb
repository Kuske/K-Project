class HomeController < ApplicationController
  def initial
    @userid=session[:user_id]
    render '/home/home'
  end
end
