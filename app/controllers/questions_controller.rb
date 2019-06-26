get '/questions/#id' do 
  @question = Question.find(params[:id])
  erb :'/questions/show'
end

get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do
  id = session[:id]
  title = params[:title]
  con = params[:content]

  @question = Question.new(user_id: id, title: title, content: con)
  redirect '/' if @question.save
  @errors = @question.errors.full_messages
  erb :'questions/new'
end