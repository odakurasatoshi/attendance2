class Students::StudentsController < ApplicationController
  def show
  	@student = current_student
  end

  def edit
  end
end
