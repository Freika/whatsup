class Newsletter < ApplicationRecord
  include DateScopable
  has_many :reports
end
