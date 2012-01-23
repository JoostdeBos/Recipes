class DropTableItems < ActiveRecord::Migration
  def up
  end

  def down
  	drop_table :items
  end
end
