require 'rails_helper'

RSpec.describe "general_enquiries/edit", type: :view do
  before(:each) do
    @general_enquiry = assign(:general_enquiry, GeneralEnquiry.create!(
      :email => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit general_enquiry form" do
    render

    assert_select "form[action=?][method=?]", general_enquiry_path(@general_enquiry), "post" do

      assert_select "input#general_enquiry_email[name=?]", "general_enquiry[email]"

      assert_select "textarea#general_enquiry_message[name=?]", "general_enquiry[message]"
    end
  end
end
