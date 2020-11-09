class AddCaloriesToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :calories, :int
  end
end
