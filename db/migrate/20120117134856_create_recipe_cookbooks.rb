class CreateRecipeCookbooks < ActiveRecord::Migration
  def change
    create_table :recipe_cookbooks do |t|
      t.integer :cookbook_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
