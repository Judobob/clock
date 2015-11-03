require 'rails_helper'

RSpec.describe "google_searches/show", type: :view do
  before(:each) do
    @google_search = assign(:google_search, GoogleSearch.create!(
      :user_id => 1,
      :search => "Search",
      :result => "MyText",
      :user_id => 2,
      :ip_address => "Ip Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Search/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Ip Address/)
  end
end
