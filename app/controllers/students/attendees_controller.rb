class Students::AttendeesController < ApplicationController
  before_action :authenticate_student!

  def index
    # @attendees = Attendee.all
    @attendees = current_student.attendees.all
    # @student = current_student
    # @attendees = @student.attendees
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
    params.require(:attendee).permit(:student_id, :lesson_id, :attendance_date)
  end
end
