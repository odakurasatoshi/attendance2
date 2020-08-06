class Attendee < ApplicationRecord
	belongs_to :student
	belongs_to :lesson

	enum attendance_status: { 未承認: 0, 承認: 1}

	def start_time
     self.attendance_date
  	end

end
