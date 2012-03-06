require 'spec_helper'

describe "participants/new" do
  before(:each) do
    assign(:participant, stub_model(Participant,
      :name => "MyString",
      :ctg => "MyString",
      :region => 1,
      :card => 1,
      :user.references => "MyString"
    ).as_new_record)
  end

  it "renders new participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => participants_path, :method => "post" do
      assert_select "input#participant_name", :name => "participant[name]"
      assert_select "input#participant_ctg", :name => "participant[ctg]"
      assert_select "input#participant_region", :name => "participant[region]"
      assert_select "input#participant_card", :name => "participant[card]"
      assert_select "input#participant_user.references", :name => "participant[user.references]"
    end
  end
end
