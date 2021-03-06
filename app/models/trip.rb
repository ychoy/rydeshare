# require 'geocoder'

class Trip < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  belongs_to :user

  validates :address, presence: true
  validates :destination_address, presence: true 
  validates :total_seats, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1}
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def all_members(trip)
    trip.users = users
  end

  def member?(user)
    user.trips.include?(self)
  end

  def admin?(user)
    self.user_id == user.id
  end

end
