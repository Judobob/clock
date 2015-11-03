require 'rails_helper'

RSpec.describe "Proxies", type: :request do
  describe "GET /proxies" do
    it "works! (now write some real specs)" do
      get proxies_path
      expect(response).to have_http_status(200)
    end
  end
end
