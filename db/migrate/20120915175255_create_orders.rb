class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :sandwich
      t.reference :user

      t.timestamps
    end
  end
end
