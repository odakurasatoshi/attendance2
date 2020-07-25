class Lesson < ApplicationRecord
	belongs_to :genre
	belongs_to :area_class
	belongs_to :teacher
end
