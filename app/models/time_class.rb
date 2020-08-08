class TimeClass < ApplicationRecord
  has_many :lessonns
  validates :time_zone, presence: true
end
