class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def up
  	change_column_null :lessons, :attendanc_datetime, true
  end
end
