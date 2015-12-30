require 'rails_helper'

RSpec.describe "modifiers/edit", type: :view do
  before(:each) do
    @modifier = assign(:modifier, Modifier.create!(
      :name => "MyText",
      :image => "MyString",
      :description => "MyText",
      :price => 1.5,
      :item => nil,
      :order => nil
    ))
  end

  it "renders the edit modifier form" do
    render

    assert_select "form[action=?][method=?]", modifier_path(@modifier), "post" do

      assert_select "textarea#modifier_name[name=?]", "modifier[name]"

      assert_select "input#modifier_image[name=?]", "modifier[image]"

      assert_select "textarea#modifier_description[name=?]", "modifier[description]"

      assert_select "input#modifier_price[name=?]", "modifier[price]"

      assert_select "input#modifier_item_id[name=?]", "modifier[item_id]"

      assert_select "input#modifier_order_id[name=?]", "modifier[order_id]"
    end
  end
end
