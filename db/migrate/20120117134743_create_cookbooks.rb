class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :post_id

      t.timestamps
    end
  end
end
