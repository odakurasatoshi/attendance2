class Students::LessonsController < ApplicationController
  def index
  	@lessons = Lesson.all
  end

  def show
  	@student = current_student
  	@lesson = Lesson.find(params[:id])
  	@attendee = Attendee.new
  end
end
