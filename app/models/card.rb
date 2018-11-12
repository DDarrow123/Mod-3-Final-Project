class Card < ApplicationRecord
  has_many :comments
  belongs_to :collection, optional: true
end
