class ChangeColumnNameOrder < ActiveRecord::Migration[6.1]
  def change
    rename_column :orders, :Code, :Worker_Code
  end
end
