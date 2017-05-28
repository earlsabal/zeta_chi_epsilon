helpers do
	def photo_posts
		page = Nokogiri::HTML(HTTParty.get("http://www.imgrum.org/user/sjsu_zxe/538035691/1085032327199511124_538035691"))
	end

	def all_photos
		photo_posts.css('.fw_preview_wrapper')
		# photo_posts.css('.featured_image_standalone')
		# photo_posts.css('.contentarea')
	end

	def photo(post)
		post.css('.featured_image_standalone')
	end

	def content(post)
		post.css('.contentarea')
	end
end