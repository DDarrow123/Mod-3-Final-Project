class Card < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  belongs_to :collection, optional: true
end
