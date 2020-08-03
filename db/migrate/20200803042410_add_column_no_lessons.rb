class AddColumnNoLessons < ActiveRecord::Migration[5.2]
  def change
  	add_column :no_lessons, :lesson_id, :integer
  end
end
