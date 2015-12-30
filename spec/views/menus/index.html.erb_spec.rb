require 'rails_helper'

RSpec.describe "menus/index", type: :view do
  before(:each) do
    assign(:menus, [
      Menu.create!(
        :name => "MyText",
        :image => "Image",
        :order => nil
      ),
      Menu.create!(
        :name => "MyText",
        :image => "Image",
        :order => nil
      )
    ])
  end

  it "renders a list of menus" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
