class AddCategoryToMeal < ActiveRecord::Migration
  def change
    add_column :meals, :category_id, :integer
  end
end
