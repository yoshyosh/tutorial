class AddLessonIdToUnits < ActiveRecord::Migration
  def self.up
    add_column :units, :lesson_id, :integer
  end

  def self.down
    remove_column :units, :lesson_id
  end
end
