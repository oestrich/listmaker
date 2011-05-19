class TroopType < ActiveRecord::Base
  validates :name, :min_percentage, :max_percentage, :presence => true

  validates :name, :uniqueness => true

  has_many :troops, :dependent => :delete_all

  after_create :set_position

  default_scope :order => "position ASC"

  def self.highest_position
    TroopType.all.inject(-1) do |sum, troop_type|
      sum > troop_type.position ? sum : troop_type.position
    end
  end

  def to_json(options = {})
    super(options.merge(:only => [ :id, :name]))
  end

  private
  def set_position
    highest_position = TroopType.highest_position
    update_attribute(:position, highest_position + 1)
  end
end
