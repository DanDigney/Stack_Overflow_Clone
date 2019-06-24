def current_user
  @current_user ||= User.find(session[:id]) if session[:id]
end

def logged_in?
  session[:id] != nil
end

def acceptable_password?
  params[:user][:password].length >= 3
end