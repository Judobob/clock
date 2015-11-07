require 'rails_helper'

RSpec.describe "public_privates/new", type: :view do
  before(:each) do
    assign(:public_private, PublicPrivate.new(
      :private_key => "MyText",
      :public_key => "MyText",
      :message_id => 1
    ))
  end

  it "renders new public_private form" do
    render

    assert_select "form[action=?][method=?]", public_privates_path, "post" do

      assert_select "textarea#public_private_private_key[name=?]", "public_private[private_key]"

      assert_select "textarea#public_private_public_key[name=?]", "public_private[public_key]"

      assert_select "input#public_private_message_id[name=?]", "public_private[message_id]"
    end
  end
end
