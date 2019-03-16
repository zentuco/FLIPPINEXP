class Experience < ApplicationRecord
  # belongs_to :attachment (todavia no he creado la tabla)
  # belongs_to :guide
  # belongs_to :category

  has_many :bookings
  has_many :users, through: :bookings
  has_many :experience_reviews, through: :bookings

  validates :title, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  # validates :duration, presence: true
  # validates :spots, presence: true
  # validates :location, presence: true
  # validates :language, presence: true
  # validates :guide_description_qualifications, presence: true
  validates :general_description, presence: true
  # validates :places2visit, presence: true
  # validates :places2visit, presence: true
  # validates :equipment_provided, presence: true
  # validates :equipment_needed, presence: true
end
