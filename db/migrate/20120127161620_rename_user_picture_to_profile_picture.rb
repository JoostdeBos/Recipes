class RenameUserPictureToProfilePicture < ActiveRecord::Migration
  def up
  	rename_column :users, :picture, :profile_picture
  end

  def down
  	rename_column :users, :profile_picture, :profile
  end
end
