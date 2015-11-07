require 'rails_helper'

RSpec.describe "user_enquiries/edit", type: :view do
  before(:each) do
    @user_enquiry = assign(:user_enquiry, UserEnquiry.create!(
      :user_profile_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit user_enquiry form" do
    render

    assert_select "form[action=?][method=?]", user_enquiry_path(@user_enquiry), "post" do

      assert_select "input#user_enquiry_user_profile_id[name=?]", "user_enquiry[user_profile_id]"

      assert_select "textarea#user_enquiry_description[name=?]", "user_enquiry[description]"
    end
  end
end
