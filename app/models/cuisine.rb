class Cuisine < ApplicationRecord
    has_many :chef_cuisines
    has_many :chefs, through: :chef_cuisines
    validates :type, presence: true
end
