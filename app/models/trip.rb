require 'geocoder'

class Trip < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships

  validates :departure_address, presence: true

  geocoded_by :address => :departure_address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
