class CreateGasAgencies < ActiveRecord::Migration[6.1]
  def change
    create_table :gas_agencies do |t|
      t.string :Name
      t.text :Address
      t.string :City
      t.string :Area
      t.string :Agency
      t.integer :Stock
      t.string :Code
      t.string :password_digest

      t.timestamps
    end
  end
end
