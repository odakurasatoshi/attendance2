class LessonsController < ApplicationController
  def new
  	@lesson = Lesson.new
  	@area_classes = AreaClass.all
  	@genres = Genre.all
  	@teachers = Teacher.all
  end

  def create
  	@lesson = Lesson.new(lesson_params)
  	@lesson.save
  	redirect_to lessons_path
  end

  def index
  	@lessons = Lesson.all
  end

  def edit
  end

  private
  def lesson_params
      params.require(:lesson).permit(:area_class_id, :genre_id, :teacher_id)
  end
  def teacher_params
  	  params.require(:teacher).permit(:last_name)
  end
end
