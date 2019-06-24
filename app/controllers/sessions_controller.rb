get '/sessions/new' do 
  erb :'sessions/new'
end

post '/sessions' do 
  @user = User.find_by(user_name: params[:user_name])

  if @user && @user.authenticate?(params[:password])
    session[:id] = @user.id
    redirect '/'
  else
    @errors = ["Incorrect User Name or Password."]
    erb :'/sessions/new'
  end
end

delete '/sessions/:id' do
  session[:id] = nil
  redirect '/'
end
