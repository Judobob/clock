require 'rails_helper'

RSpec.describe "general_enquiries/index", type: :view do
  before(:each) do
    assign(:general_enquiries, [
      GeneralEnquiry.create!(
        :email => "Email",
        :message => "MyText"
      ),
      GeneralEnquiry.create!(
        :email => "Email",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of general_enquiries" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
