class Restaurant < ApplicationRecord
    has_many :chef_restaurants
    has_many :chefs, through: :chef_restaurants
    validates :name, presence: true
end
