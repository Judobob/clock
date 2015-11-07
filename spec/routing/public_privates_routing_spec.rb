require "rails_helper"

RSpec.describe PublicPrivatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/public_privates").to route_to("public_privates#index")
    end

    it "routes to #new" do
      expect(:get => "/public_privates/new").to route_to("public_privates#new")
    end

    it "routes to #show" do
      expect(:get => "/public_privates/1").to route_to("public_privates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/public_privates/1/edit").to route_to("public_privates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/public_privates").to route_to("public_privates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/public_privates/1").to route_to("public_privates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/public_privates/1").to route_to("public_privates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/public_privates/1").to route_to("public_privates#destroy", :id => "1")
    end

  end
end
