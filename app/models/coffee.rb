class Coffee < ApplicationRecord
  belongs_to :roaster
  validates :name, presence: true
  validates :roaster, presence: true
end
