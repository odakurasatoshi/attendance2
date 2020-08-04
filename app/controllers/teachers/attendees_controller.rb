class Teachers::AttendeesController < ApplicationController
  before_action :authenticate_teacher!

  def index
  	@attendees = Attendee.all
  end
end
