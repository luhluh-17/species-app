class Species < ApplicationRecord
  has_many :publications
  has_many :galleries
  accepts_nested_attributes_for :galleries, :publications
end
