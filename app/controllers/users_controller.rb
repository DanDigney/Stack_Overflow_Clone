get '/users/new' do 
  erb :'/users/new'
end

post '/users' do 
  @user = User.new(params)
  if @user.valid? && acceptable_password? && acceptable_email?
    @user.save
    session[:id] = @user.id
    redirect '/'
  else
    @errors = @user.errors.full_messages
    @errors << "Password must be 6-25 characters" if !acceptable_password?
    erb :'/users/new'
  end
end