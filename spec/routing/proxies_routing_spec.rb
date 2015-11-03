require "rails_helper"

RSpec.describe ProxiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/proxies").to route_to("proxies#index")
    end

    it "routes to #new" do
      expect(:get => "/proxies/new").to route_to("proxies#new")
    end

    it "routes to #show" do
      expect(:get => "/proxies/1").to route_to("proxies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/proxies/1/edit").to route_to("proxies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/proxies").to route_to("proxies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/proxies/1").to route_to("proxies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/proxies/1").to route_to("proxies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/proxies/1").to route_to("proxies#destroy", :id => "1")
    end

  end
end
