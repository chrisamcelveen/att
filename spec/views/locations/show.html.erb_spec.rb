require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :display_name => "MyText",
      :location_name => "MyText",
      :description => "MyText",
      :address => "Address",
      :zip => "Zip",
      :image => "Image",
      :truck => false,
      :menu => nil,
      :order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
