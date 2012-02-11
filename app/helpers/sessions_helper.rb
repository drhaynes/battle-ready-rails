module SessionsHelper

  def sign_in(user)
    session[:user_id] = user.id
    current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    user == current_user
  end

  def sign_out
    session[:user_id] = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:redirect_to] || default)
    clear_return_to
  end

  def store_location
    session[:redirect_to] = request.fullpath
  end

  private
  
    def clear_return_to
      session.delete(:return_to)
    end
end
