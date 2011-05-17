require 'spec_helper'

describe "troop_types/edit.html.haml" do
  before(:each) do
    @troop_type = assign(:troop_type, stub_model(TroopType,
      :name => "MyString",
      :percentage => 1
    ))
  end

  it "renders the edit troop_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => troop_types_path(@troop_type), :method => "post" do
      assert_select "input#troop_type_name", :name => "troop_type[name]"
      assert_select "input#troop_type_percentage", :name => "troop_type[percentage]"
    end
  end
end
