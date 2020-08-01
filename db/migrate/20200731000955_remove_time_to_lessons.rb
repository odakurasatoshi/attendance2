class RemoveTimeToLessons < ActiveRecord::Migration[5.2]
  def change
  	remove_column :lessons, :time, :datetime
  end
end
