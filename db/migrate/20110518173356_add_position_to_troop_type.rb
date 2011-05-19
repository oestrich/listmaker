class AddPositionToTroopType < ActiveRecord::Migration
  def self.up
    add_column :troop_types, :position, :integer, :default => 0

    TroopType.all.inject(0) do |next_position, troop_type|
      troop_type.update_attribute(:position, next_position + 1)
      next_position + 1
    end
  end

  def self.down
    remove_column :troop_types, :position
  end
end
