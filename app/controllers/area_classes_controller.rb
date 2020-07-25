class AreaClassesController < ApplicationController

  def index
  	@area_class = AreaClass.new
  	@area_classes = AreaClass.all
  end

  def create
  	@area_class = AreaClass.new(area_class_params)
  	@area_class.save
  	redirect_to area_classes_path
  end

  def destroy
  	@area_class = AreaClass.find(params[:id])
  	@area_class.destroy
  	redirect_to area_classes_path
  end

  private

  def area_class_params
    params.require(:area_class).permit(:name)
  end
end
