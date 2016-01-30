require 'rails_helper'

RSpec.describe "general_enquiries/new", type: :view do
  before(:each) do
    assign(:general_enquiry, GeneralEnquiry.new(
      :email => "MyString",
      :message => "MyText"
    ))
  end

  it "renders new general_enquiry form" do
    render

    assert_select "form[action=?][method=?]", general_enquiries_path, "post" do

      assert_select "input#general_enquiry_email[name=?]", "general_enquiry[email]"

      assert_select "textarea#general_enquiry_message[name=?]", "general_enquiry[message]"
    end
  end
end
