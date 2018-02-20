module UserShowHelper
  def log_in(user)
    session[:user_id]=@idnum
  end

  def current_user
    @current_user ||=User.find_by(id:session[:user_id])
  end
end
