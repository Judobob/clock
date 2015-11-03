require 'rails_helper'

RSpec.describe "google_searches/edit", type: :view do
  before(:each) do
    @google_search = assign(:google_search, GoogleSearch.create!(
      :user_id => 1,
      :search => "MyString",
      :result => "MyText",
      :user_id => 1,
      :ip_address => "MyString"
    ))
  end

  it "renders the edit google_search form" do
    render

    assert_select "form[action=?][method=?]", google_search_path(@google_search), "post" do

      assert_select "input#google_search_user_id[name=?]", "google_search[user_id]"

      assert_select "input#google_search_search[name=?]", "google_search[search]"

      assert_select "textarea#google_search_result[name=?]", "google_search[result]"

      assert_select "input#google_search_user_id[name=?]", "google_search[user_id]"

      assert_select "input#google_search_ip_address[name=?]", "google_search[ip_address]"
    end
  end
end
