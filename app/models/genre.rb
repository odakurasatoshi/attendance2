class Genre < ApplicationRecord
  has_many :lessonns
  validates :name, presence: true
end
