require 'rails_helper'

RSpec.describe "public_privates/index", type: :view do
  before(:each) do
    assign(:public_privates, [
      PublicPrivate.create!(
        :private_key => "MyText",
        :public_key => "MyText",
        :message_id => 1
      ),
      PublicPrivate.create!(
        :private_key => "MyText",
        :public_key => "MyText",
        :message_id => 1
      )
    ])
  end

  it "renders a list of public_privates" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
