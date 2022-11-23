class Gallery < ApplicationRecord
  belongs_to :species
  belongs_to :user
  has_one_attached :image
end
