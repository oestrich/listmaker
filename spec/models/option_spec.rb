require 'spec_helper'

describe Option do
  before :each do
    @subject = Factory(:option) 
  end
  
  describe '#point_type' do
    it 'should return the correct type' do
      @subject.type_id = 0
      @subject.type.should == :single
    end
  end

  describe Option, '#total_points' do
    before :each do 
      @subject.troop.update_attribute(:count, 10)
      @subject.update_attribute(:points, 1)
    end

    it 'should return correct total points for group' do
      @subject.update_attribute(:type_id, 1)
      @subject.total_points.should == 10
    end

    it 'should return correct total points for group' do
      @subject.update_attribute(:type_id, 0)
      @subject.total_points.should == 1
    end
  end
end
