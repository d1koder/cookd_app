class ChefRestaurant < ApplicationRecord
  belongs_to :chef
  belongs_to :restaurant
end
