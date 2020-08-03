class StudentsController < ApplicationController

  def show
  	@student = current_student
    @attendees = @student.attendees
  end

  def edit
  	@student = current_student
  end

  def update
  	@student = current_student
  	@student.update(student_params)
  	redirect_to student_path
  end

  private
  def student_params
  	params.require(:student).permit(:last_name, :first_name, :sub_last_name, :sub_first_name, :email)
  end
end
