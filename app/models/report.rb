class Report < ApplicationRecord
  include DateScopable

  belongs_to :user
  belongs_to :newsletter
  has_many :tasks

  has_many :team_reports
  has_many :teams, through: :team_reports
end
