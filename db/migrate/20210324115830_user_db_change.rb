class UserDbChange < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :private, :boolean
    add_column :users, :comment_count, :integer
  end
end
