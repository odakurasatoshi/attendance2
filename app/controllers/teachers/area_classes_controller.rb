class Teachers::AreaClassesController < ApplicationController
  before_action :authenticate_teacher!

  def index
    @area_class = AreaClass.new
    @area_classes = AreaClass.all
  end

  def create
    @area_class = AreaClass.new(area_class_params)
    @area_classes = AreaClass.all
    if @area_class.save
      redirect_to teachers_area_classes_path
    else
      render :index
    end
  end

  def edit
    @area_class = AreaClass.find(params[:id])
  end

  def update
    @area_class = AreaClass.find(params[:id])
    if @area_class.update(area_class_params)
      flash[:success] = "更新完了"
      redirect_to teachers_area_classes_path
    else
      render :edit
    end
  end

  # def destroy
  # @area_class = AreaClass.find(params[:id])
  # @area_class.destroy
  # redirect_to teachers_area_classes_path
  # end

  private

  def area_class_params
    params.require(:area_class).permit(:name)
  end
end
