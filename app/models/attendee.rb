class Attendee < ApplicationRecord
	belongs_to :student
	belongs_to :lesson
	# selfはrailsの予約語
	def start_time
     self.attendance_date
  	end

end
