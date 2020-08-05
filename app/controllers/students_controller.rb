class StudentsController < ApplicationController
  before_action :authenticate_student!

  def show
  	@student = current_student
    @attendees = @student.attendees
  end

  def edit
  	@student = current_student
  end

  def update
  	@student = current_student
    @attendees = @student.attendees
  	if @student.update(student_params)
       flash[:notice] = "編集内容が保存されました."
  	   redirect_to student_path
    else
       render :edit
    end
  end

  def change
    @student = current_student
  end


  private
  def student_params
  	params.require(:student).permit(:last_name, :first_name, :sub_last_name, :sub_first_name, :email, :course_id)
  end
end
