class Publication < ApplicationRecord
  belongs_to :species
  belongs_to :user

  validates :title, presence: true
  validates :summary, presence: true
  validates :url, presence: true
  validates :publication_date, presence: true
end
