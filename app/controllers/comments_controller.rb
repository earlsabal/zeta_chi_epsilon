
get '/comments' do
  @comments = Comment.all
  erb :'comments/index'
end

post '/comments' do
  @comment = Comment.new(params[:comment])
  if @comment.save
    if request.xhr?
      erb :'comments/_comment', layout: false, locals: {comment: @comment}
    else
      redirect '/comments'
    end
  else
    erb :register
  end
end

delete '/comment/:id' do
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect '/comments'
end