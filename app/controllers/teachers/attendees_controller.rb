class Teachers::AttendeesController < ApplicationController
  before_action :authenticate_teacher!

  def index
  	@attendees = Attendee.where('created_at>?', 1.day.ago)
  end
end
