class AddIndexToUnits < ActiveRecord::Migration
  def self.up
    add_index :units, :lesson_id
  end

  def self.down
	remove :units, :column => :lesson_id
  end
end
