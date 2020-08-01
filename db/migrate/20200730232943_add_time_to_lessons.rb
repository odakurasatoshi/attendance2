class AddTimeToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :time, :datetime
  end
end
