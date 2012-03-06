require 'spec_helper'

describe "modalities/index" do
  before(:each) do
    assign(:modalities, [
      stub_model(Modality,
        :name => "Name",
        :description => "MyText",
        :participants => 1,
        :event => nil
      ),
      stub_model(Modality,
        :name => "Name",
        :description => "MyText",
        :participants => 1,
        :event => nil
      )
    ])
  end

  it "renders a list of modalities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
