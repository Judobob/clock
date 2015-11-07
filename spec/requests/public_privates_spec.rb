require 'rails_helper'

RSpec.describe "PublicPrivates", type: :request do
  describe "GET /public_privates" do
    it "works! (now write some real specs)" do
      get public_privates_path
      expect(response).to have_http_status(200)
    end
  end
end
