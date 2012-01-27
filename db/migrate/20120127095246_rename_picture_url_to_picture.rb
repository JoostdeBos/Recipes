class RenamePictureUrlToPicture < ActiveRecord::Migration
  def up
  	rename_column :users, :picture_url, :picture
  end

  def down
  	rename_column :users, :picture, :picture_url
  end
end
