helpers do
	def photo_posts
		page = Nokogiri::HTML(HTTParty.get("http://www.imgrum.org/user/sjsu_zxe/538035691/1085032327199511124_538035691"))
	end
end