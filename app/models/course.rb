class Course < ApplicationRecord
	has_many :students
	validates :name, presence: true
end
