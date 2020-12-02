class Transaction < ApplicationRecord
  belongs_to :order
  before_save :save_cost
  validates :order_id, presence: true
  validates :cost, presence: true

  def save_cost
    self.cost = self.order.duration * self.order.chef.price
  end

end
