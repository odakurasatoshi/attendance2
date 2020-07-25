class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer "class_id", null: false
      t.integer "level_id", null: false
      t.integer "teacher_id", null: false
      t.string "image_id"
      t.datetime "attendanc_datetime", null: false
      t.timestamps
    end
  end
end
