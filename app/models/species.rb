class Species < ApplicationRecord
  has_many :publications
  has_many :galleries
  accepts_nested_attributes_for :galleries, :publications

  validates_presence_of :species_name

  def scientific_name(genus, name)
    "#{genus} #{name}"
  end
end
