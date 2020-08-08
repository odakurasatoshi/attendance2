class AddColumnStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :teacher_id, :integer
    add_column :students, :is_active, :boolean, default: true
  end
end
