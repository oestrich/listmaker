require 'spec_helper'

describe Troop do
  before { subject = Factory(:troop) }

  describe '#point_type' do
    it 'should return the correct point type' do
      subject.point_type_id = 0
      subject.point_type.should == :single
    end
  end
end
