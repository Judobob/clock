require 'rails_helper'

RSpec.describe "user_profiles/show", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      :user_id => 1,
      :user_first_name => "User First Name",
      :user_second_name => "User Second Name",
      :user_email => "User Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/User First Name/)
    expect(rendered).to match(/User Second Name/)
    expect(rendered).to match(/User Email/)
  end
end
