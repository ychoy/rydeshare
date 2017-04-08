class Trip < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships

  validates :departure_address, presence: true
  geocoded_by :departure_address
  after_validation :geocode, if: ->(obj){ obj.departure_address.present? and obj.departure_address_changed? }
end
