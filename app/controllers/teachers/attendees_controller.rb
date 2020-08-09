class Teachers::AttendeesController < ApplicationController
  before_action :authenticate_teacher!

  def index
      @attendees = Attendee.all
      # @attendees = Attendee.where("created_at >= ?", Time.zone.now.beginning_of_day)
  end

  def edit
    @attendee = Attendee.find_by(id: params[:id])
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
