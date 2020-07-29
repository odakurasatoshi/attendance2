class Students::StudentsController < ApplicationController
  def show
  	@student = current_student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(current_student)
  end

  private
  def student_params
  	params.require(:student).permit(:last_name, :first_name, :sub_last_name, :sub_first_name, :email)
  end
end
