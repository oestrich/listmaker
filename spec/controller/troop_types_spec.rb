require 'spec_helper'

describe TroopTypesController do
  include RSpec::Rails::ControllerExampleGroup
  
  describe '#update_positions' do
    before :each do
      @troop_type = Factory(:troop_type)
      @troop_type2 = Factory(:troop_type)
      @troop_type3 = Factory(:troop_type)
    end

    it 'should return 204' do
      put :update_positions, :troop_type => {:positions => [{:id => @troop_type.id, :position => 1}]}

      response.status.should == 204
    end

    it 'should update the troop type positions' do
      put :update_positions, :troop_type => {:positions => [
        {:id => @troop_type.id, :position => 2},
        {:id => @troop_type2.id, :position => 3},
        {:id => @troop_type3.id, :position => 1}
      ]}

      @troop_type.reload
      @troop_type2.reload
      @troop_type3.reload

      @troop_type.position.should == 2
      @troop_type2.position.should == 3
      @troop_type3.position.should == 1
    end
  end
end
