require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :display_name => "MyText",
        :location_name => "MyText",
        :description => "MyText",
        :address => "Address",
        :zip => "Zip",
        :image => "Image",
        :truck => false,
        :menu => nil,
        :order => nil
      ),
      Location.create!(
        :display_name => "MyText",
        :location_name => "MyText",
        :description => "MyText",
        :address => "Address",
        :zip => "Zip",
        :image => "Image",
        :truck => false,
        :menu => nil,
        :order => nil
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
