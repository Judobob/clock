require "rails_helper"

RSpec.describe UserEnquiriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_enquiries").to route_to("user_enquiries#index")
    end

    it "routes to #new" do
      expect(:get => "/user_enquiries/new").to route_to("user_enquiries#new")
    end

    it "routes to #show" do
      expect(:get => "/user_enquiries/1").to route_to("user_enquiries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_enquiries/1/edit").to route_to("user_enquiries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_enquiries").to route_to("user_enquiries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_enquiries/1").to route_to("user_enquiries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_enquiries/1").to route_to("user_enquiries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_enquiries/1").to route_to("user_enquiries#destroy", :id => "1")
    end

  end
end
