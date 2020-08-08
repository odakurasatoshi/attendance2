class RenameLevelIdColumnToLessons < ActiveRecord::Migration[5.2]
  def change
    rename_column :lessons, :level_id, :genre_id
  end
end
