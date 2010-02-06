class RemoveSampleCodeFromApp < ActiveRecord::Migration
  def self.up
    remove_column :apps, :samplecode
  end

  def self.down
    add_column :apps, :samplecode, :text
  end
end
