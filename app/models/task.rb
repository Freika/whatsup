class Task < ApplicationRecord
  has_paper_trail

  belongs_to :user

  enum status: %i[todo done backlog]

  validates :content, :estimated_hours, :spent_hours, presence: true
  validates :estimated_hours, :spent_hours, numericality: true
end
