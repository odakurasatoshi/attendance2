class Students::LessonsController < ApplicationController
  def index
  	@lessons = Lesson.all
  	@no_lessons = NoLesson.all.order(created_at: :desc)
  end

  def show
  	@student = current_student
  	@lesson = Lesson.find(params[:id])
  	@no_lessons = NoLesson.all.order(created_at: :desc)
  	@attendee = Attendee.new
  end
end
