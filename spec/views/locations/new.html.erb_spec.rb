require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :display_name => "MyText",
      :location_name => "MyText",
      :description => "MyText",
      :address => "MyString",
      :zip => "MyString",
      :image => "MyString",
      :truck => false,
      :menu => nil,
      :order => nil
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "textarea#location_display_name[name=?]", "location[display_name]"

      assert_select "textarea#location_location_name[name=?]", "location[location_name]"

      assert_select "textarea#location_description[name=?]", "location[description]"

      assert_select "input#location_address[name=?]", "location[address]"

      assert_select "input#location_zip[name=?]", "location[zip]"

      assert_select "input#location_image[name=?]", "location[image]"

      assert_select "input#location_truck[name=?]", "location[truck]"

      assert_select "input#location_menu_id[name=?]", "location[menu_id]"

      assert_select "input#location_order_id[name=?]", "location[order_id]"
    end
  end
end
