class AddCountToTroops < ActiveRecord::Migration
  def self.up
    add_column :troops, :count, :integer, :default => 1

    Troop.all.each do |troop|
      troop.update_attribute(:count, 1)
    end
  end

  def self.down
    remove_column :troops, :count
  end
end
