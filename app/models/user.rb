class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :memberships
  has_many :teams, through: :memberships

  has_many :tasks
  has_many :reports

  validates :username, presence: true, uniqueness: true
end
