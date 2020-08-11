class Teachers::TimeClassesController < ApplicationController
  before_action :authenticate_teacher!

  def index
    @time_class = TimeClass.new
    @time_classes = TimeClass.all
  end

  def create
    @time_class = TimeClass.new(time_class_params)
    @time_classes = TimeClass.all
    if @time_class.save
      redirect_to teachers_time_classes_path
    else
      render :index
    end
  end

  def edit
    @time_class = TimeClass.find(params[:id])
  end

  def update
    @time_class = TimeClass.find(params[:id])
    if @time_class.update(time_class_params)
      flash[:success] = "更新完了"
      redirect_to teachers_time_classes_path
    else
      render :edit
    end
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
