class CreateNoLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :no_lessons do |t|
      t.date :no_lesson_date

      t.timestamps
    end
  end
end
