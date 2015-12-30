require 'rails_helper'

RSpec.describe "Modifiers", type: :request do
  describe "GET /modifiers" do
    it "works! (now write some real specs)" do
      get modifiers_path
      expect(response).to have_http_status(200)
    end
  end
end
