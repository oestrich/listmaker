class AddTroop < ActiveRecord::Migration
  def self.up
    create_table :troops do |t|
      t.string :name
      t.integer :base_points
    end
  end

  def self.down
    drop_table :troops
  end
end
