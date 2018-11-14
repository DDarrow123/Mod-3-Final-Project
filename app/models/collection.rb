class Collection < ApplicationRecord
  has_many :cards
  has_many :comments, through: :cards
end
