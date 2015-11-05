require 'rails_helper'

RSpec.describe "MegaTables", type: :request do
  describe "GET /mega_tables" do
    it "works! (now write some real specs)" do
      get mega_tables_path
      expect(response).to have_http_status(200)
    end
  end
end
