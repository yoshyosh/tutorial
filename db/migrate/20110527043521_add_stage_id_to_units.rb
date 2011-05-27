class AddStageIdToUnits < ActiveRecord::Migration
  def self.up
    add_column :units, :stage_id, :integer
  end

  def self.down
    remove_column :units, :stage_id
  end
end
