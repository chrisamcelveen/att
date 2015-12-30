require 'rails_helper'

RSpec.describe "menus/edit", type: :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!(
      :name => "MyText",
      :image => "MyString",
      :order => nil
    ))
  end

  it "renders the edit menu form" do
    render

    assert_select "form[action=?][method=?]", menu_path(@menu), "post" do

      assert_select "textarea#menu_name[name=?]", "menu[name]"

      assert_select "input#menu_image[name=?]", "menu[image]"

      assert_select "input#menu_order_id[name=?]", "menu[order_id]"
    end
  end
end
