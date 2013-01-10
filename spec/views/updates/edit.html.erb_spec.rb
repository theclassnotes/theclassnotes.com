require 'spec_helper'

describe "updates/edit" do
  before(:each) do
    @update = assign(:update, stub_model(Update,
      :title => "MyString",
      :user_id => 1,
      :body => "MyText",
      :title_image => ""
    ))
  end

  it "renders the edit update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => updates_path(@update), :method => "post" do
      assert_select "input#update_title", :name => "update[title]"
      assert_select "input#update_user_id", :name => "update[user_id]"
      assert_select "textarea#update_body", :name => "update[body]"
      assert_select "input#update_title_image", :name => "update[title_image]"
    end
  end
end
