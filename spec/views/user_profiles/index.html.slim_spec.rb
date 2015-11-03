require 'rails_helper'

RSpec.describe "user_profiles/index", type: :view do
  before(:each) do
    assign(:user_profiles, [
      UserProfile.create!(
        :user_id => 1,
        :user_first_name => "User First Name",
        :user_second_name => "User Second Name",
        :user_email => "User Email"
      ),
      UserProfile.create!(
        :user_id => 1,
        :user_first_name => "User First Name",
        :user_second_name => "User Second Name",
        :user_email => "User Email"
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "User First Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Second Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Email".to_s, :count => 2
  end
end
