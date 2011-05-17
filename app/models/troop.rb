class Troop < ActiveRecord::Base
  validates :name, :base_points, :point_type_id, :presence => true

  belongs_to :troop_type

  def self.point_types
    [:single, :group]
  end

  def point_type
    return Troop.point_types[point_type_id]
  end
end
