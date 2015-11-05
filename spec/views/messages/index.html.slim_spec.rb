require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :new => "New"
      ),
      Message.create!(
        :new => "New"
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "New".to_s, :count => 2
  end
end
