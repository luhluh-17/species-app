class Publication < ApplicationRecord
  belongs_to :species
  belongs_to :user

  validates :title, presence: true
  validates :summary, presence: true
  validates :url, presence: true
  validates :publiction_date, presence: true
end
