class Chef < ApplicationRecord
  belongs_to :profile
  has_many :chef_cuisines
  has_many :cuisines, through: :chef_cuisines
  has_many :chef_restaurants
  has_many :restaurants, through: :chef_restaurants
  
end
