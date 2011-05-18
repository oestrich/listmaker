class TroopType < ActiveRecord::Base
  validates :name, :min_percentage, :max_percentage, :presence => true

  validates :name, :uniqueness => true

  has_many :troops, :dependent => :delete_all


  def to_json(options = {})
    super(options.merge(:only => [ :id, :name]))
  end
end
