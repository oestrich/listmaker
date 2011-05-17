require 'spec_helper'

describe "troop_types/index.html.haml" do
  before(:each) do
    assign(:troop_types, [
      stub_model(TroopType,
        :name => "Name",
        :percentage => 1
      ),
      stub_model(TroopType,
        :name => "Name",
        :percentage => 1
      )
    ])
  end

  it "renders a list of troop_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
