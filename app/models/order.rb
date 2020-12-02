class Order < ApplicationRecord
  belongs_to :user
  belongs_to :chef
  belongs_to :cuisine
  validates :user_id, presence: true
  validates :chef_id, presence: true
  validates :pax_number, presence: true
  validates :cuisine_id, presence: true
  validates :duration, presence: true
  validates :booking_datetime, presence: true
end
