class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :guide
  belongs_to :user
  belongs_to :guide
  belongs_to :category
end
