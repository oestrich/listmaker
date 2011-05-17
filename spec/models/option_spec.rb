require 'spec_helper'

describe Option do
  before { subject = Factory(:option) }

  describe '#point_type' do
    it 'should return the correct type' do
      subject.type_id = 0
      subject.type.should == :single
    end
  end
end
