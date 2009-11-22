class CreateApps < ActiveRecord::Migration
  def self.up
    create_table :apps do |t|
      t.string :title
      t.string :author
      t.string :demo
      t.string :source
      t.text :description
      t.text :samplecode

      t.timestamps
    end
  end

  def self.down
    drop_table :apps
  end
end
