require 'spec_helper'

describe "modalities/new" do
  before(:each) do
    assign(:modality, stub_model(Modality,
      :name => "MyString",
      :description => "MyText",
      :participants => 1,
      :event => nil
    ).as_new_record)
  end

  it "renders new modality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => modalities_path, :method => "post" do
      assert_select "input#modality_name", :name => "modality[name]"
      assert_select "textarea#modality_description", :name => "modality[description]"
      assert_select "input#modality_participants", :name => "modality[participants]"
      assert_select "input#modality_event", :name => "modality[event]"
    end
  end
end
