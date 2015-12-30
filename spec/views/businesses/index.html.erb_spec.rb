require 'rails_helper'

RSpec.describe "businesses/index", type: :view do
  before(:each) do
    assign(:businesses, [
      Business.create!(
        :name => "MyText",
        :phone_number => "Phone Number",
        :address => "Address",
        :zip => "Zip",
        :user => nil,
        :order => nil
      ),
      Business.create!(
        :name => "MyText",
        :phone_number => "Phone Number",
        :address => "Address",
        :zip => "Zip",
        :user => nil,
        :order => nil
      )
    ])
  end

  it "renders a list of businesses" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
