class Task < ApplicationRecord
  belongs_to :user

  enum status: %i[todo done backlog]
end
