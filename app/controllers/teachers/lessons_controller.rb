class Teachers::LessonsController < ApplicationController
  def new
  	@lesson = Lesson.new
  end

  def create
  	@lesson = Lesson.new(lesson_params)
  	@lesson.save
  	redirect_to teachers_lessons_path
  end

  def index
  	@lessons = Lesson.all
  end

  def edit
  	@lesson = Lesson.find(params[:id])
  end

  private
  def lesson_params
      params.require(:lesson).permit(:area_class_id, :genre_id, :teacher_id)
  end

end