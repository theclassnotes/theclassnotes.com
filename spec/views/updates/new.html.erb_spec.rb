require 'spec_helper'

describe "updates/new" do
  before(:each) do
    assign(:update, stub_model(Update,
      :title => "MyString",
      :user_id => 1,
      :body => "MyText",
      :title_image => ""
    ).as_new_record)
  end

  it "renders new update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => updates_path, :method => "post" do
      assert_select "input#update_title", :name => "update[title]"
      assert_select "input#update_user_id", :name => "update[user_id]"
      assert_select "textarea#update_body", :name => "update[body]"
      assert_select "input#update_title_image", :name => "update[title_image]"
    end
  end
end
