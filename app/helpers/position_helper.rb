helpers do

	def find_president
		Position.find_by(name: "President").brother
	end

	def find_pledge_lord
		Position.find_by(name: "Pledge Lord").brother
	end

	def find_vice_president
		Position.find_by(name: "Vice President").brother
	end

	def find_publicity
		Position.find_by(name: "Publicity").brother
	end

	def find_fundraiser
		Position.find_by(name: "Fundraiser").brother
	end

	def find_philanthropy
		Position.find_by(name: "Philanthropy").brother
	end

	def find_social_chair
		Position.find_by(name: "Social Chair").brother
	end

	def find_treasurer
		Position.find_by(name: "Treasurer").brother
	end

	def find_brotherhood
		Position.find_by(name: "Brotherhood").brother
	end

	def find_academics
		Position.find_by(name: "Academics").brother
	end

	def find_secretary
		Position.find_by(name: "Secretary").brother
	end

	def find_chancellor
		Position.find_by(name: "Chancellor").brother
	end

	def find_liason
		Position.find_by(name: "Liason").brother
	end

	def find_ritual
		Position.find_by(name: "Ritual").brother
	end

end