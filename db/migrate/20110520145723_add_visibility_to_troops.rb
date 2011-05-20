class AddVisibilityToTroops < ActiveRecord::Migration
  def self.up
    add_column :troops, :visibility, :string, :default => "visible"

    Troop.all.each do |troop|
      troop.visibility = "visible"
    end
  end

  def self.down
    remove_column :troops, :visibility
  end
end
