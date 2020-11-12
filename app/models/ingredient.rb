class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  # You can’t delete an ingredient if it is used by at least one cocktail.
  validates :name, uniqueness: true, presence: true
end
