class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.string :votable_type
      t.integer :votable_id, :user_id
      t.boolean :positive
      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
