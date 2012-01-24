class AddFieldsToIngredients < ActiveRecord::Migration
  def change
  	add_column :ingredients, :name, :string
  	add_column :ingredients, :unit_id, :integer
  	add_column :ingredients, :category_id, :integer
  end
end
