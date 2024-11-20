class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1,  # Minimum rating is 1
    less_than_or_equal_to: 5      # Maximum rating is 5
  }
end
