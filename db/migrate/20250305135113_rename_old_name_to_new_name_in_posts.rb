class RenameOldNameToNewNameInPosts < ActiveRecord::Migration[8.0]
  def change
    rename_column :posts, :content,:description
  end
end
