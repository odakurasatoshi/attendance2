class Lesson < ApplicationRecord
	belongs_to :genre
	belongs_to :area_class
	belongs_to :teacher
	belongs_to :time_class
	has_many :attendees
	has_many :no_lessons
	attachment :image
end
