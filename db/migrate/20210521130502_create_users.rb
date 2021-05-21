class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :Ph_Number
      t.text :Address
      t.string :City
      t.string :Area
      t.string :Agency
      t.string :Gas_Agency
      t.string :User_Id

      t.timestamps
    end
  end
end
