class Teachers::CoursesController < ApplicationController
  before_action :authenticate_teacher!

  def index
  	@course = Course.new
  	@courses = Course.all
  end

  def create
  	@course = Course.new(course_params)
    @courses = Course.all
  	if @course.save
  	   redirect_to teachers_courses_path
    else
       render :index
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
       redirect_to teachers_courses_path
    else
       render :edit
    end
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
