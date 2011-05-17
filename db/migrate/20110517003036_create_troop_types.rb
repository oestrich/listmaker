class CreateTroopTypes < ActiveRecord::Migration
  def self.up
    create_table :troop_types do |t|
      t.string :name
      t.integer :percentage

      t.timestamps
    end
  end

  def self.down
    drop_table :troop_types
  end
end
