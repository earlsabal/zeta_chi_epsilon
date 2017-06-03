class Comment < ApplicationRecord
  validates :author, presence: true
  validates :body, presence: true

  def posted
  	self.created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
