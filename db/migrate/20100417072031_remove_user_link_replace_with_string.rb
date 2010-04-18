class RemoveUserLinkReplaceWithString < ActiveRecord::Migration
  def self.up
    remove_column :comments, :user_id
    add_column :comments, :username, :string
  end

  def self.down
    remove_column :comments, :username
    add_column :comments, :user_id, :integer
  end
end
