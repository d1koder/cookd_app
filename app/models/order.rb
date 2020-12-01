class Order < ApplicationRecord
  belongs_to :user
  belongs_to :chef
  belongs_to :cuisine
end
