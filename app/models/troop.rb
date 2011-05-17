class Troop < ActiveRecord::Base
  validates :name, :base_points, :point_type_id, :count, :presence => true

  belongs_to :troop_type

  def self.point_types
    [:single, :group]
  end

  def self.total_points
    all.inject(0) { |sum, troop| sum + troop.total_points }
  end

  def point_type
    return Troop.point_types[point_type_id]
  end

  def total_points
    count * base_points
  end
end
