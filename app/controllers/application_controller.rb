class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def justsayinghello
    render html:"hello Kuske!!"
  end
end
