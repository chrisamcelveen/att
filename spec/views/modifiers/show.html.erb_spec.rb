require 'rails_helper'

RSpec.describe "modifiers/show", type: :view do
  before(:each) do
    @modifier = assign(:modifier, Modifier.create!(
      :name => "MyText",
      :image => "Image",
      :description => "MyText",
      :price => 1.5,
      :item => nil,
      :order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
