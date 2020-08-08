class AddColumnAttendees < ActiveRecord::Migration[5.2]
  def change
    add_column :attendees, :attendance_status, :integer, default: 0
  end
end
