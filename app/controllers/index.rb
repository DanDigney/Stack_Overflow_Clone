get '/' do 
  @user = User.first.user_name
  erb :'index'
end