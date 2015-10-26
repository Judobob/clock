require 'rails_helper'

RSpec.describe "Nationalities", type: :request do
  describe "GET /nationalities" do
    it "works! (now write some real specs)" do
      get nationalities_path
      expect(response).to have_http_status(200)
    end
  end
end
