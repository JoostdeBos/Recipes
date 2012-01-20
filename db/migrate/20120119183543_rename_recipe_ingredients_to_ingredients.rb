class RenameRecipeIngredientsToIngredients < ActiveRecord::Migration
  def up
    rename_table :recipe_ingredients, :ingredients
  end

  def down
    rename_table :ingredients, :recipe_ingredients
  end
end
