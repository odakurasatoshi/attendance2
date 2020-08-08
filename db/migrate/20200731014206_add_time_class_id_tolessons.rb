class AddTimeClassIdTolessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :time_class_id, :integer
  end
end
