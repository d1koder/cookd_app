class Transaction < ApplicationRecord
  belongs_to :order
  before_save :save_cost

  def save_cost
    self.cost = self.order.duration * self.order.chef.price
  end

end
