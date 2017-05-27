class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :memberships
  has_many :teams, through: :memberships

  validates :username, presence: true, uniqueness: true
end
