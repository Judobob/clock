require 'rails_helper'

RSpec.describe "user_enquiries/show", type: :view do
  before(:each) do
    @user_enquiry = assign(:user_enquiry, UserEnquiry.create!(
      :user_profile_id => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
