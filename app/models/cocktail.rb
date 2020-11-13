class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # has_one_attached :picture --> si une seule photo
  has_many_attached :pictures
  validates :name, uniqueness: true, presence: true
end
