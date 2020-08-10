class ChangeMailer < ApplicationMailer
  def send_change(current_student, course_id)
    @student = current_student
    @course = course_id
    mail to: 'testinfo18216@gmail.com', subject: 'コース変更依頼'
  end
end
