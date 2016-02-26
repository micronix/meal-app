class CreateOrderMeals < ActiveRecord::Migration
  def change
    create_table :order_meals do |t|
      t.integer :order_id
      t.integer :meal_id
    end
  end
end
