class StudentsController < ApplicationController
  before_action :authenticate_student!

  def show
    @student = current_student
    @attendees = @student.attendees.where(attendance_status: "承認")
  end

  def edit
    @student = current_student
  end

  def update
    @student = current_student
    @attendees = @student.attendees
    if @student.update(student_params)
      flash[:success] = "編集内容が保存されました."
      redirect_to student_path
    else
      render :edit
    end
  end

  private

  def student_params
    params.require(:student).permit(:last_name, :first_name, :sub_last_name, :sub_first_name, :email, :course_id)
  end
end
