class Roaster < ApplicationRecord
  has_many :reviews, through: :coffees
  has_many :coffees
  validates :name, presence: true
end
