class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :home_address, presence: true
  validates :mobile_number, presence: true
  validates :user_id, presence: true
end
