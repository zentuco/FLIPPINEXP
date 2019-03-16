class Experience < ApplicationRecord
  # belongs_to :attachment (todavia no he creado la tabla)
  belongs_to :guide
  belongs_to :category

  has_many :bookings
  has_many :users, through: :bookings
  has_many :experience_reviews, through: :bookings
end
