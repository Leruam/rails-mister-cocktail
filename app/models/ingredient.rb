class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true
  # You can’t delete an ingredient if it is used by at least one cocktail.
end
