get '/' do
	redirect '/home'
end

get '/home' do
	erb :'main_pages/home' 
end

get '/about' do
	@crosses = Cross.all
	erb :'main_pages/about'
end

get '/contact' do
	erb :'main_pages/contact'
end

get '/news' do
	# p fb_posts["data"]
	erb :'main_pages/news'
end

get '/photos' do
	@photos = all_photos
	erb :'main_pages/photos'
end

get '/comments' do
	@comments = Comment.all
	erb :'main_pages/photos'
end