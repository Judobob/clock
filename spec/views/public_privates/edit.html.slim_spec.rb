require 'rails_helper'

RSpec.describe "public_privates/edit", type: :view do
  before(:each) do
    @public_private = assign(:public_private, PublicPrivate.create!(
      :private_key => "MyText",
      :public_key => "MyText",
      :message_id => 1
    ))
  end

  it "renders the edit public_private form" do
    render

    assert_select "form[action=?][method=?]", public_private_path(@public_private), "post" do

      assert_select "textarea#public_private_private_key[name=?]", "public_private[private_key]"

      assert_select "textarea#public_private_public_key[name=?]", "public_private[public_key]"

      assert_select "input#public_private_message_id[name=?]", "public_private[message_id]"
    end
  end
end
