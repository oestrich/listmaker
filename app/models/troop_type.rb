class TroopType < ActiveRecord::Base
  validates :name, :percentage, :presence => true

  validates :name, :uniqueness => true
end
