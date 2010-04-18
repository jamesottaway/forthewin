class RemoveUserFromVote < ActiveRecord::Migration
  def self.up
    remove_column :votes, :user_id
  end

  def self.down
    add_column :votes, :user_id, :integer
  end
end
