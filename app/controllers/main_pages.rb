get '/' do
	redirect '/home'
end

get '/home' do
	erb :'main_pages/home' 
end

get '/about' do
	erb :'main_pages/about'
end

get '/contact' do
	erb :'main_pages/contact'
end
