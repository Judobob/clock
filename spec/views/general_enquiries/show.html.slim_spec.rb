require 'rails_helper'

RSpec.describe "general_enquiries/show", type: :view do
  before(:each) do
    @general_enquiry = assign(:general_enquiry, GeneralEnquiry.create!(
      :email => "Email",
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/MyText/)
  end
end
