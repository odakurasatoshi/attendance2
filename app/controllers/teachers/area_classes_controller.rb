class Teachers::AreaClassesController < ApplicationController
  def index
  	@area_class = AreaClass.new
  	@area_classes = AreaClass.all
  end

  def create
  	@area_class = AreaClass.new(area_class_params)
  	@area_class.save
  	redirect_to teachers_area_classes_path
  end

  def edit
    @area_class = AreaClass.find(params[:id])
  end

  def update
    @area_class = AreaClass.find(params[:id])
    @area_class.update(area_class_params)
    redirect_to teachers_area_classes_path
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
