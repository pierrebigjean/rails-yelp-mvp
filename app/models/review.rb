class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5]

  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: RATINGS, message: "choose between 0 and 5" }, numericality: { only_integer: true }
end
