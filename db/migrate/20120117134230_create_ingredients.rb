class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :unit_id
      t.integer :category_id
      t.integer :calories

      t.timestamps
    end
  end
end
