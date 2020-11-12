class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
  validates :description, presence: true
  validates :cocktail, uniqueness: {
    scope: :ingredient,
    message: "should create only one dose per cocktail and ingredient"
  }
  # dose doit appartenir a un cocktail
end

# validates :ingredient, uniqueness: { scope: :cocktail, 
#    message: "should create only one dose per cocktail and ingredient" }
