require "rails_helper"

RSpec.describe GeneralEnquiriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/general_enquiries").to route_to("general_enquiries#index")
    end

    it "routes to #new" do
      expect(:get => "/general_enquiries/new").to route_to("general_enquiries#new")
    end

    it "routes to #show" do
      expect(:get => "/general_enquiries/1").to route_to("general_enquiries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/general_enquiries/1/edit").to route_to("general_enquiries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/general_enquiries").to route_to("general_enquiries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/general_enquiries/1").to route_to("general_enquiries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/general_enquiries/1").to route_to("general_enquiries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/general_enquiries/1").to route_to("general_enquiries#destroy", :id => "1")
    end

  end
end
