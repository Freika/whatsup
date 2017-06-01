class Newsletter < ApplicationRecord
  has_many :reports

  scope :today, -> { where(created_at: Date.current.all_day).first }
end
