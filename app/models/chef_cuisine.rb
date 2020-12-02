class ChefCuisine < ApplicationRecord
  belongs_to :chef
  belongs_to :cuisine
  validates :chef_id, presence: true
  validates :cuisine_id, presence: true
end
