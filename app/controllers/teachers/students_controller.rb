class Teachers::StudentsController < ApplicationController
  before_action :authenticate_teacher!

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  # def search
  # Viewのformで取得したパラメータをモデルに渡す
  # @students = Student.search(id: params[:search])
  # end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    flash[:success] = "生徒情報更新完了"
    redirect_to teachers_students_path
  end

  private

  def student_params
    params.require(:student).permit(:teacher_id, :course_id)
  end
end
