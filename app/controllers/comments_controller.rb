
get '/comments' do
  @comments = Comment.all
  erb :'comments/index'
end

post '/comments' do
  @comment = Comment.new(params[:comment])
  if @comment.save
    redirect '/comments'
  else
    erb :register
  end
end

delete '/comment/:id' do
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect '/comments'
end