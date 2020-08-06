class Students::RequestsController < ApplicationController
  before_action :authenticate_student!

  # コース変更依頼画面へ遷移
  def show
  	@student = current_student
  end

  # コース変更依頼をActionMailerで送信
  def create
    raise
    @student = current_student
    ChangeMailer.send_change(student).deliver
    redirect_to students_request_path(current_student)
  end
end
