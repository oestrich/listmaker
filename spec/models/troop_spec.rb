require 'spec_helper'

describe Troop do
  before { subject = Factory(:troop) }

  describe '#point_type' do
    it 'should return the correct point type' do
      subject.point_type_id = 0
      subject.point_type.should == :single
    end
  end

  describe '#total_points' do
    before do 
      subject.update_attribute(:count, 10)
      subject.update_attribute(:base_points, 25)
    end

    it 'should return correct total points' do
      subject.total_points.should == 250
    end
  end

  describe 'self.total_points' do
    before do
      Factory(:troop, :base_points => 25)
      Factory(:troop, :base_points => 10, :count => 20)
    end

    it 'should return correct total points' do
      Troop.total_points.should == 275
    end
  end
end
