class Teachers::StudentsController < ApplicationController
  before_action :authenticate_teacher!

  def index
  	@students = Student.all
  end

  def show
  	@student = Student.find_by(id: params[:id])
  end

  def search
    #Viewのformで取得したパラメータをモデルに渡す
    @students = Student.search(id: params[:search])
  end

  def edit
  	@student = Student.find_by(params[:id])
  end

  # def update
    # @student = Student.find(params[:id])
    # @student.update(student_params)
    # redirect_to teachers_students_path
  # end

  # private
  # def student_params
  	# params.require(:student).permit(:last_name, :first_name, :sub_last_name, :sub_first_name, :email)
  # end
end
