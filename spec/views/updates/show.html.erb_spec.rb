require 'spec_helper'

describe "updates/show" do
  before(:each) do
    @update = assign(:update, stub_model(Update,
      :title => "Title",
      :user_id => 1,
      :body => "MyText",
      :title_image => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
