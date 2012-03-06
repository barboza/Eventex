require 'spec_helper'

describe "modalities/edit" do
  before(:each) do
    @modality = assign(:modality, stub_model(Modality,
      :name => "MyString",
      :description => "MyText",
      :participants => 1,
      :event => nil
    ))
  end

  it "renders the edit modality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => modalities_path(@modality), :method => "post" do
      assert_select "input#modality_name", :name => "modality[name]"
      assert_select "textarea#modality_description", :name => "modality[description]"
      assert_select "input#modality_participants", :name => "modality[participants]"
      assert_select "input#modality_event", :name => "modality[event]"
    end
  end
end
