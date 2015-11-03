require 'rails_helper'

RSpec.describe "google_searches/index", type: :view do
  before(:each) do
    assign(:google_searches, [
      GoogleSearch.create!(
        :user_id => 1,
        :search => "Search",
        :result => "MyText",
        :user_id => 2,
        :ip_address => "Ip Address"
      ),
      GoogleSearch.create!(
        :user_id => 1,
        :search => "Search",
        :result => "MyText",
        :user_id => 2,
        :ip_address => "Ip Address"
      )
    ])
  end

  it "renders a list of google_searches" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Search".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Ip Address".to_s, :count => 2
  end
end
