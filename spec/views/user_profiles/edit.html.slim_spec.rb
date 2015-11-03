require 'rails_helper'

RSpec.describe "user_profiles/edit", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      :user_id => 1,
      :user_first_name => "MyString",
      :user_second_name => "MyString",
      :user_email => "MyString"
    ))
  end

  it "renders the edit user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profile_path(@user_profile), "post" do

      assert_select "input#user_profile_user_id[name=?]", "user_profile[user_id]"

      assert_select "input#user_profile_user_first_name[name=?]", "user_profile[user_first_name]"

      assert_select "input#user_profile_user_second_name[name=?]", "user_profile[user_second_name]"

      assert_select "input#user_profile_user_email[name=?]", "user_profile[user_email]"
    end
  end
end
