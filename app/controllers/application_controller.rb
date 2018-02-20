class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include UserShowHelper
  def justsayinghello
    render html:"Hellllo"
  end
end
