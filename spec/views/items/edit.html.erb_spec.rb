require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyText",
      :image => "MyString",
      :description => "MyText",
      :price => 1.5,
      :available => false,
      :fire_time => 1,
      :menu => nil,
      :order => nil
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "textarea#item_name[name=?]", "item[name]"

      assert_select "input#item_image[name=?]", "item[image]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_available[name=?]", "item[available]"

      assert_select "input#item_fire_time[name=?]", "item[fire_time]"

      assert_select "input#item_menu_id[name=?]", "item[menu_id]"

      assert_select "input#item_order_id[name=?]", "item[order_id]"
    end
  end
end
