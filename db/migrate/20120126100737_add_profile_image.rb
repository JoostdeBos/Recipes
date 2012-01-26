class AddProfileImage < ActiveRecord::Migration
  def change
    add_column :profile_pictures, :profimage, :string
  end
end
