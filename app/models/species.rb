class Species < ApplicationRecord
  has_many :publications
  has_many :galleries
end
