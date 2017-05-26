get '/sessions-view' do
  session.inspect
end

get '/sessions/new' do
  erb :"admin/login"
end

post '/sessions' do
  @admin = Admin.authenticate(params[:username], params[:password])
  if @admin
    login(@admin)
    redirect "/home"
  else
    @errors = true
    erb :"admin/login"
  end
end

delete '/logout' do
  logout
  redirect '/sessions/new'
end