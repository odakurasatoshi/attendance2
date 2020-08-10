class Students::RequestsController < ApplicationController
  before_action :authenticate_student!

  # コース変更依頼画面へ遷移
  def show
    @student = current_student
  end

  # コース変更依頼をActionMailerで送信
  def create
    # @student = current_student
    # @course = params[:student][:course_id]
    ChangeMailer.send_change(current_student, params[:student][:course_id]).deliver
    redirect_to students_request_path(current_student)
    flash[:success] = "変更依頼を送信しました"
  end
end
