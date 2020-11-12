class Dose < ApplicationRecord
  # must have a description
  validates :description, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
  belongs_to :ingredient
  belongs_to :cocktail
end
