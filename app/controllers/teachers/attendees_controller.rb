class Teachers::AttendeesController < ApplicationController
  before_action :authenticate_teacher!

  def index
    @attendees = Attendee.where('created_at>?', 1.day.ago)
  end

  def show
    @attendee = Attendee.find_by(student_id: params[:id])
  end

  def update
    @attendee = Attendee.find(params[:id])
    @attendee.update(attendee_params)
    redirect_to teachers_attendees_path
  end

  private

  def attendee_params
    params.require(:attendee).permit(:attendance_status)
  end
end
