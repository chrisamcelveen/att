require "rails_helper"

RSpec.describe ModifiersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/modifiers").to route_to("modifiers#index")
    end

    it "routes to #new" do
      expect(:get => "/modifiers/new").to route_to("modifiers#new")
    end

    it "routes to #show" do
      expect(:get => "/modifiers/1").to route_to("modifiers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/modifiers/1/edit").to route_to("modifiers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/modifiers").to route_to("modifiers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/modifiers/1").to route_to("modifiers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/modifiers/1").to route_to("modifiers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/modifiers/1").to route_to("modifiers#destroy", :id => "1")
    end

  end
end
