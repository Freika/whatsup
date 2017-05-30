class Report < ApplicationRecord
  belongs_to :user
  has_many :tasks

  has_many :team_reports
  has_many :teams, through: :team_reports
end
