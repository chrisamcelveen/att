require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :name => "MyText",
        :image => "Image",
        :description => "MyText",
        :price => 1.5,
        :available => false,
        :fire_time => 1,
        :menu => nil,
        :order => nil
      ),
      Item.create!(
        :name => "MyText",
        :image => "Image",
        :description => "MyText",
        :price => 1.5,
        :available => false,
        :fire_time => 1,
        :menu => nil,
        :order => nil
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
