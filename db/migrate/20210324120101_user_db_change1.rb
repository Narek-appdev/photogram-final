class UserDbChange1 < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :comments_count, :integer
    remove_column :users, :comment_count
  end
end
