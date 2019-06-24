def current_user
  @current_user ||= User.find(session[:id]) if session[:id]
end

def logged_in?
  session[:id] != nil
end

def acceptable_password?
  plength = params[:password].length
  (plength >= 6) && (plength <= 25)
end

def acceptable_email?
  reggie = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  return true if params[:email] =~ reggie
end