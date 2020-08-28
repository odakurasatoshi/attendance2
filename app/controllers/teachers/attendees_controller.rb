class Teachers::AttendeesController < ApplicationController
  before_action :authenticate_teacher!

  def create
    @attendee = Attendee.find_by(id: params[:id])
    @attendee.save
  end

  def index
    @attendees = Attendee.all.order(created_at: :desc).search(params[:search])
    # @attendees = Attendee.where("created_at >= ?", Time.zone.now.beginning_of_day)
  end

  def edit
    @attendee = Attendee.find_by(id: params[:id])
  end

  def update
    @attendee = Attendee.find(params[:id])
    @attendee.update(attendee_params)
    flash[:success] = "更新完了"
    redirect_to teachers_attendees_path
  end

  private

  def attendee_params
    params.require(:attendee).permit(:attendance_status)
  end
end
