class User < ApplicationRecord
  has_many :comments
  has_many :cards, through: :comments
end
