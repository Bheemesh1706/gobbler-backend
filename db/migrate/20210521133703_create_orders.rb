class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :User_Id
      t.boolean :Booking
      t.boolean :Confirmed
      t.boolean :Out_For_Delivery
      t.boolean :Delivered
      t.string :Order_Number
      t.string :Code

      t.timestamps
    end
  end
end
