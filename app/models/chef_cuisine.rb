class ChefCuisine < ApplicationRecord
  belongs_to :chef
  belongs_to :cuisine
end
