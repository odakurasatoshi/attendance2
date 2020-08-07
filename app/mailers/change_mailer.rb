class ChangeMailer < ApplicationMailer
	def send_change
		@student = Student.all
		# @course = course
		mail to: 'testinfo18216@gmail.com', subject: 'コース変更依頼'
	end
end
