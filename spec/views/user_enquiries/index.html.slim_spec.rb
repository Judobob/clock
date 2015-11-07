require 'rails_helper'

RSpec.describe "user_enquiries/index", type: :view do
  before(:each) do
    assign(:user_enquiries, [
      UserEnquiry.create!(
        :user_profile_id => 1,
        :description => "MyText"
      ),
      UserEnquiry.create!(
        :user_profile_id => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of user_enquiries" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
