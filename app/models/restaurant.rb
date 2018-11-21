class Restaurant < ApplicationRecord
  valid_categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: valid_categories }
  has_many :reviews, dependent: :destroy
end
