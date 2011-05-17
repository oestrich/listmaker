class Troop < ActiveRecord::Base
  validates :name, :base_points, :point_type_id, :count, :presence => true

  before_create :check_point_type_for_auto_add

  belongs_to :troop_type

  has_many :options, :dependent => :delete_all

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
    total_base_points = count * base_points
    total_options = options.inject(0) { |sum, option| sum + option.total_points }
    total_base_points + total_options
  end

  private
  def check_point_type_for_auto_add
    return if point_type != :group

    option = options.build(:name => "Command", :points => 10, :type_id => 0)
    option.save
  end
end
