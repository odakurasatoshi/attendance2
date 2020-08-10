class Teachers::SearchController < ApplicationController
  before_action :authenticate_teacher!

  def search
  	# @column = params["search"]["column"]
      # if search
      # Student.where(['content LIKE ?', "%#{search}%"])
      # else
      # Student.all
      # end
    end
end
