require 'rails_helper'

RSpec.describe "user_profiles/edit", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      :user_id => 1,
      :first_name => "MyString",
      :second_name => "MyString",
      :telephone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profile_path(@user_profile), "post" do

      assert_select "input#user_profile_user_id[name=?]", "user_profile[user_id]"

      assert_select "input#user_profile_first_name[name=?]", "user_profile[first_name]"

      assert_select "input#user_profile_second_name[name=?]", "user_profile[second_name]"

      assert_select "input#user_profile_telephone[name=?]", "user_profile[telephone]"

      assert_select "input#user_profile_email[name=?]", "user_profile[email]"
    end
  end
end
