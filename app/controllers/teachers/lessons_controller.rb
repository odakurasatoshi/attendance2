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

  def show
    @lesson = Lesson.find(params[:id])
    @no_lesson = NoLesson.new
  end

  def edit
  	@lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    redirect_to teachers_lessons_path
  end

  private
  def lesson_params
      params.require(:lesson).permit(:area_class_id, :genre_id, :teacher_id, :time_class_id, :image)
  end

end