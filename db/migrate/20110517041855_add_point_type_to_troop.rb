class AddPointTypeToTroop < ActiveRecord::Migration
  def self.up
    add_column :troops, :point_type_id, :integer
  end

  def self.down
    remove_column :troops, :point_type_id
  end
end
