class RenameIngredientToItem < ActiveRecord::Migration
  def up
    rename_table :ingredients, :items
  end

  def down
    rename_table :items, :ingredients
  end
end
