require 'rails_helper'

RSpec.describe "modifiers/index", type: :view do
  before(:each) do
    assign(:modifiers, [
      Modifier.create!(
        :name => "MyText",
        :image => "Image",
        :description => "MyText",
        :price => 1.5,
        :item => nil,
        :order => nil
      ),
      Modifier.create!(
        :name => "MyText",
        :image => "Image",
        :description => "MyText",
        :price => 1.5,
        :item => nil,
        :order => nil
      )
    ])
  end

  it "renders a list of modifiers" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
