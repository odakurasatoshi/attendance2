class Teachers::AttendeesController < ApplicationController
  def index
  	@attendees = Attendee.all
  	@students = Student.all
  end
end
