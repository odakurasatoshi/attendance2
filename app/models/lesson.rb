class Lesson < ApplicationRecord
	belongs_to :genre
	belongs_to :area_class
	belongs_to :teacher
	belongs_to :time_class
	has_many :attendees
	has_many :no_lessons
	attachment :image
	validates :area_class_id, presence: true
	validates :genre_id, presence: true
	validates :teacher_id, presence: true
end
