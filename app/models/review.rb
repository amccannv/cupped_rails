class Review < ApplicationRecord
  belongs_to :user
  belongs_to :coffee
  default_scope -> { order(created_at: :desc) }
  validates :coffee, presence: true
  validates :user_id, presence: true
  validates :content, length: { maximum: 2000 }
  validates :rating, presence: true, inclusion: { in: 0.0..5.0 }
end
