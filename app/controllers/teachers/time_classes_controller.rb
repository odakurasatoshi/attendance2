class Teachers::TimeClassesController < ApplicationController
  def index
  	@time_class = TimeClass.new
  	@time_classes = TimeClass.all
  end

  def create
  	@time_class = TimeClass.new(time_class_params)
  	@time_class.save
  	redirect_to teachers_time_classes_path
  end

  def edit
    @time_class = TimeClass.find(params[:id])
  end

  def update
    @time_class = TimeClass.find(params[:id])
    @time_class.update(time_class_params)
    redirect_to teachers_time_classes_path
  end

  # def destroy
  	# @time_class = timeClass.find(params[:id])
  	# @time_class.destroy
  	# redirect_to teachers_time_classes_path
  # end

  private

  def time_class_params
    params.require(:time_class).permit(:time_zone)
  end
end
