require 'spec_helper'

describe Troop do
  before :each do
    @subject = Factory(:troop)
  end

  describe '#point_type' do
    it 'should return the correct point type' do
      @subject.point_type_id = 0
      @subject.point_type.should == :single
    end
  end

  describe '#toggle' do
    it 'should toggle the visibility' do
      @subject.toggle_visibility
      @subject.visibility.should == "hidden"

      @subject.toggle_visibility
      @subject.visibility.should == "visible"
    end
  end

  it '#display_status' do
    @subject.display_status.should == "block"

    @subject.toggle_visibility

    @subject.display_status.should == "none"
  end

  describe '#total_points' do
    before :each do 
      @subject.update_attribute(:count, 10)
      @subject.update_attribute(:base_points, 25)
    end

    it 'should return correct total points' do
      @subject.total_points.should == 250
    end
  end

  describe 'self.total_points' do
    before :each do
      Factory(:troop, :base_points => 25)
      Factory(:troop, :base_points => 10, :count => 20)
    end

    it 'should return correct total points' do
      Troop.total_points.should == 275
    end
  end

  it '#css_selector' do
    @subject.update_attribute(:name, 'Baddie McEnemy')
    @subject.css_selector.should == 'baddie-mcenemy'
  end

  describe '#destroy' do
    before :each do
      Factory(:option, :troop => @subject)
    end
    
    it 'should destroy associated options' do
    end
  end

  describe 'should auto add options based on point type' do
    it 'auto add command group for group' do
      @subject = Factory(:troop, :point_type_id => 1)

      @subject.options.count.should == 1
    end
  end
end
