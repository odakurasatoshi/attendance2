class CreateTimeClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :time_classes do |t|
      t.string :time_zone
      t.timestamps
    end
  end
end
