class Team < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships

  has_many :team_reports
  has_many :reports, through: :team_reports
end
