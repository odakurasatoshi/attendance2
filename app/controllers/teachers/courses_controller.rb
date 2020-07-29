class Teachers::CoursesController < ApplicationController
  def index
  	@course = Course.new
  	@courses = Course.all
  end

  def create
  	@course = Course.new(course_params)
  	@course.save
  	redirect_to teachers_courses_path
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to teachers_courses_path
  end

  # def destroy
  	# @course = Course.find(params[:id])
  	# @course.destroy
  	# redirect_to teachers_courses_path
  # end

  private
  def course_params
  	params.require(:course).permit(:name)
  end
end
