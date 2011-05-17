require 'spec_helper'

describe "troop_types/show.html.haml" do
  before(:each) do
    @troop_type = assign(:troop_type, stub_model(TroopType,
      :name => "Name",
      :percentage => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
