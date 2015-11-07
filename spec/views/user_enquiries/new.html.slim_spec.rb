require 'rails_helper'

RSpec.describe "user_enquiries/new", type: :view do
  before(:each) do
    assign(:user_enquiry, UserEnquiry.new(
      :user_profile_id => 1,
      :description => "MyText"
    ))
  end

  it "renders new user_enquiry form" do
    render

    assert_select "form[action=?][method=?]", user_enquiries_path, "post" do

      assert_select "input#user_enquiry_user_profile_id[name=?]", "user_enquiry[user_profile_id]"

      assert_select "textarea#user_enquiry_description[name=?]", "user_enquiry[description]"
    end
  end
end
