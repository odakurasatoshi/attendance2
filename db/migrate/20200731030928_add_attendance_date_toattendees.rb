class AddAttendanceDateToattendees < ActiveRecord::Migration[5.2]
  def change
    add_column :attendees, :attendance_date, :date
  end
end
