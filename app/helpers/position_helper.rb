helpers do

	def find_president
		Position.find_by(name: "President")
	end

	def find_pledge_lord
		Position.find_by(name: "Pledge Lord")
	end

	def find_vice_president
		Position.find_by(name: "Vice President")
	end

	def find_publicity
		Position.find_by(name: "Publicity")
	end

	def find_fundraiser
		Position.find_by(name: "Fundraiser")
	end

	def find_philanthropy
		Position.find_by(name: "Philanthropy")
	end

	def find_social_chair
		Position.find_by(name: "Social Chair")
	end

	def find_treasurer
		Position.find_by(name: "Treasurer")
	end

	def find_brotherhood
		Position.find_by(name: "Brotherhood")
	end

	def find_academics
		Position.find_by(name: "Academics")
	end

	def find_secretary
		Position.find_by(name: "Secretary")
	end

	def find_chancellor
		Position.find_by(name: "Chancellor")
	end

	def find_liason
		Position.find_by(name: "Liason")
	end

	def find_ritual
		Position.find_by(name: "Ritual")
	end

end