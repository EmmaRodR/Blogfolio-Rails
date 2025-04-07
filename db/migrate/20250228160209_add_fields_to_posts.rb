class AddFieldsToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :published_at, :datetime
    add_column :posts, :category, :integer, default: 0
  end
end
