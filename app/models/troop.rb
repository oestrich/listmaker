class Troop < ActiveRecord::Base
  validates :name, :base_points, :presence => true

  belongs_to :troop_type
end
