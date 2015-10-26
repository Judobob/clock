require "rails_helper"

RSpec.describe NationalitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nationalities").to route_to("nationalities#index")
    end

    it "routes to #new" do
      expect(:get => "/nationalities/new").to route_to("nationalities#new")
    end

    it "routes to #show" do
      expect(:get => "/nationalities/1").to route_to("nationalities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/nationalities/1/edit").to route_to("nationalities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/nationalities").to route_to("nationalities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/nationalities/1").to route_to("nationalities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/nationalities/1").to route_to("nationalities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nationalities/1").to route_to("nationalities#destroy", :id => "1")
    end

  end
end
