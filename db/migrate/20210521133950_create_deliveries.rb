class CreateDeliveries < ActiveRecord::Migration[6.1]
  def change
    create_table :deliveries do |t|
      t.string :Ph_Number
      t.string :Gas_Agency
      t.string :Worker_Code

      t.timestamps
    end
  end
end
