class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.integer "student_id", null: false
      t.integer "lesson_id", null: false
      t.timestamps
    end
  end
end
