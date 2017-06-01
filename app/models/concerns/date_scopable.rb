module DateScopable
  extend ActiveSupport::Concern

  included do
    scope :today, -> { find_by(created_at: Date.current.all_day) }
  end
end
