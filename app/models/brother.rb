class Brother < ApplicationRecord
  belongs_to :cross
  has_many :positions
end
