class Students::LessonsController < ApplicationController
  def index
  	@lessons = Lesson.all
  end

  def show
  	@student = Student.find(params[:id])
  	@lesson = Lesson.find(params[:id])
  	@attendee = Attendee.new
  end
end
