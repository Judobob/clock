require 'rails_helper'

RSpec.describe "user_profiles/new", type: :view do
  before(:each) do
    assign(:user_profile, UserProfile.new(
      :user_id => 1,
      :user_first_name => "MyString",
      :user_second_name => "MyString",
      :user_email => "MyString"
    ))
  end

  it "renders new user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profiles_path, "post" do

      assert_select "input#user_profile_user_id[name=?]", "user_profile[user_id]"

      assert_select "input#user_profile_user_first_name[name=?]", "user_profile[user_first_name]"

      assert_select "input#user_profile_user_second_name[name=?]", "user_profile[user_second_name]"

      assert_select "input#user_profile_user_email[name=?]", "user_profile[user_email]"
    end
  end
end
