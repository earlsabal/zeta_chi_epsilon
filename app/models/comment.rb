class Comment < ApplicationRecord
  validates :author, presence: true
  validates :body, presence: true
end
