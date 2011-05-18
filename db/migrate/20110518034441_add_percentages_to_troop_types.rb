class AddPercentagesToTroopTypes < ActiveRecord::Migration
  def self.up
    add_column :troop_types, :min_percentage, :integer, :default => 0
    add_column :troop_types, :max_percentage, :integer, :default => 0

    TroopType.all.each do |type|
      type.update_attribute(:max_percentage, type.percentage)
    end

    remove_column :troop_types, :percentage
  end

  def self.down
    add_column :troop_types, :percentage, :integer

    TroopType.all.each do |type|
      type.update_attribute(:percentage, type.max_percentage)
    end

    remove_column :troop_types, :min_percentage
    remove_column :troop_types, :max_percentage
  end
end
