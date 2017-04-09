class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :memberships, dependent: :destroy
  has_many :trips, through: :memberships

  validates :first_name, presence: true, length: { in: 1..50}
  validates :last_name, presence: true, length: { in: 1..50}

  def member?(trip)
    trip.users.include?(self)
  end
end
