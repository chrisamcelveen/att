require 'rails_helper'

RSpec.describe "menus/new", type: :view do
  before(:each) do
    assign(:menu, Menu.new(
      :name => "MyText",
      :image => "MyString",
      :order => nil
    ))
  end

  it "renders new menu form" do
    render

    assert_select "form[action=?][method=?]", menus_path, "post" do

      assert_select "textarea#menu_name[name=?]", "menu[name]"

      assert_select "input#menu_image[name=?]", "menu[image]"

      assert_select "input#menu_order_id[name=?]", "menu[order_id]"
    end
  end
end
