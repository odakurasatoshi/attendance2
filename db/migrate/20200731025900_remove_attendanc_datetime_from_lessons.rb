class RemoveAttendancDatetimeFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :attendanc_datetime, :datetime
  end
end
