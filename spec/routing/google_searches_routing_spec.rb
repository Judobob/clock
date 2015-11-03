require "rails_helper"

RSpec.describe GoogleSearchesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/google_searches").to route_to("google_searches#index")
    end

    it "routes to #new" do
      expect(:get => "/google_searches/new").to route_to("google_searches#new")
    end

    it "routes to #show" do
      expect(:get => "/google_searches/1").to route_to("google_searches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/google_searches/1/edit").to route_to("google_searches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/google_searches").to route_to("google_searches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/google_searches/1").to route_to("google_searches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/google_searches/1").to route_to("google_searches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/google_searches/1").to route_to("google_searches#destroy", :id => "1")
    end

  end
end
