class Teachers::NoLessonsController < ApplicationController
  def index
  	@no_lessons = NoLesson.all.order(created_at: :desc)
  end

  def create
  	@no_lesson = NoLesson.new(no_lesson_params)
  	@no_lesson.save
  	redirect_to teachers_no_lessons_path
  end

  def destroy
  	@no_lesson = NoLesson.find(params[:id])
  	@no_lesson.destroy
  	redirect_to teachers_no_lessons_path
  end

  def no_lesson_params
    params.require(:no_lesson).permit(:lesson_id, :no_lesson_date)
  end
end
