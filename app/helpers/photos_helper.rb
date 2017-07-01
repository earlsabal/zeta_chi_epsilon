helpers do
	def photo_posts
		page = HTTParty.get("https://www.instagram.com/sjsu_zxe/?__a=1")	
	end

	def all_photos
		photo_posts["user"]["media"]["nodes"]
	end

	def photo(post)
		post["thumbnail_src"]
	end

	def content(post)
		post["caption"]
	end
end
