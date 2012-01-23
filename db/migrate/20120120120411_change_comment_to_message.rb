class ChangeCommentToMessage < ActiveRecord::Migration
  def up
  	rename_column :comments, :comment, :message
  end

  def down
  	rename_column :comments, :message, :comment
  end
end
