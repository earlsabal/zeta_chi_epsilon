class Position < ApplicationRecord
  belongs_to :brother

  def display_picture
  	self.picture == nil ? "images/no-profile.gif" : self.picture
  end

  def display_email
  	self.email == nil ? "No email provided" : self.email
  end
end
