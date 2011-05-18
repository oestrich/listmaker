class TroopType < ActiveRecord::Base
  validates :name, :min_percentage, :max_percentage, :presence => true

  validates :name, :uniqueness => true

  has_many :troops, :dependent => :delete_all
end
