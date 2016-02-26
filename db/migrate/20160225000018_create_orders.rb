class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer  :user_id, null: false
      t.datetime :timestamp, null: false
      t.decimal  :amount, null: false
      t.boolean  :delivered, null: false, default: false
    end
  end
end
