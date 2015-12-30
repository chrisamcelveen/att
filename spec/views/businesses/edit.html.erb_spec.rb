require 'rails_helper'

RSpec.describe "businesses/edit", type: :view do
  before(:each) do
    @business = assign(:business, Business.create!(
      :name => "MyText",
      :phone_number => "MyString",
      :address => "MyString",
      :zip => "MyString",
      :user => nil,
      :order => nil
    ))
  end

  it "renders the edit business form" do
    render

    assert_select "form[action=?][method=?]", business_path(@business), "post" do

      assert_select "textarea#business_name[name=?]", "business[name]"

      assert_select "input#business_phone_number[name=?]", "business[phone_number]"

      assert_select "input#business_address[name=?]", "business[address]"

      assert_select "input#business_zip[name=?]", "business[zip]"

      assert_select "input#business_user_id[name=?]", "business[user_id]"

      assert_select "input#business_order_id[name=?]", "business[order_id]"
    end
  end
end
