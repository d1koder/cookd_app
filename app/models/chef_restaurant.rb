class ChefRestaurant < ApplicationRecord
  belongs_to :chef
  belongs_to :restaurant
  validates :chef_id, presence: true
  validates :restaurant_id, presence: true
end
