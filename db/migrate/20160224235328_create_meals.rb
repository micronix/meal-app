class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string  :name
      t.integer :user_id
      t.decimal :price
    end
  end
end
