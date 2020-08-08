class RenameClassIdColumnToLessons < ActiveRecord::Migration[5.2]
  def change
    rename_column :lessons, :class_id, :area_class_id
  end
end
