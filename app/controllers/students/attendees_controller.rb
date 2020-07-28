class Students::AttendeesController < ApplicationController
  def index
  end

  def show
    @attendees = Attendee.all
    @attendee = current_student.attendees.last
  end

  def create
  	@attendee = Attendee.new(attendee_params)
  	@attendee.student_id = current_student.id
  	@attendee.save
  	redirect_to students_attendee_path(current_student)
  end

  private

  def attendee_params
    params.require(:attendee).permit(:student_id, :lesson_id)
  end
end
