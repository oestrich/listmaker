class TroopType < ActiveRecord::Base
  validates :name, :percentage, :presence => true

  validates :name, :uniqueness => true

  has_many :troops
end
