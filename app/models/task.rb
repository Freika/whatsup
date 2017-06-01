class Task < ApplicationRecord
  has_paper_trail

  belongs_to :user
  belongs_to :report

  delegate :username, to: :user, prefix: true

  scope :today, -> { where(created_at: Date.current.all_day) }

  enum status: %i[todo done backlog]

  validates :content, :estimated_hours, :spent_hours, presence: true
  validates :estimated_hours, :spent_hours, numericality: true
end
