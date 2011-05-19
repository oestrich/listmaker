require 'spec_helper'

describe TroopType do
  before :each do
    @subject = Factory(:troop_type)
  end

  describe 'position' do
    before :each do
      Factory(:troop_type)
    end

    it 'highest_position' do
      TroopType.highest_position.should == 2
    end

    it 'should have the next position' do
      @next = Factory(:troop_type)
      @next.position.should == 3
    end
  end
end
