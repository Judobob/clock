require 'rails_helper'

RSpec.describe "user_profiles/index", type: :view do
  before(:each) do
    assign(:user_profiles, [
      UserProfile.create!(
        :user_id => 1,
        :first_name => "First Name",
        :second_name => "Second Name",
        :telephone => "Telephone",
        :email => "Email"
      ),
      UserProfile.create!(
        :user_id => 1,
        :first_name => "First Name",
        :second_name => "Second Name",
        :telephone => "Telephone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Second Name".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
