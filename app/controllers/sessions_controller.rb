get '/sessions-view' do
  session.inspect
end

get '/sessions/new' do
  erb :"sessions/new"
end

post '/sessions' do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    login(@user)
    redirect "/users/#{@user.id}"
  else
    @errors = true
    erb :"sessions/new"
  end
end

delete '/logout' do
  session.delete(:user_id)
  redirect '/sessions/new'
end