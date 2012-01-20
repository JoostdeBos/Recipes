class RenamePostIdToRecipeId < ActiveRecord::Migration
  def up
  	rename_column :comments, :post_id, :recipe_id
  end

  def down
  	rename_column :comments, :recipe_id, :post_id
  end
end
