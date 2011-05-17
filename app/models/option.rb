class Option < ActiveRecord::Base
  belongs_to :troop

  validates :name, :points, :type_id, :presence => true

  def self.types
    [:single, :group]
  end

  def type
    Option.types[type_id]
  end
end
