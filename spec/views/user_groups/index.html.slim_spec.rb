require 'rails_helper'

RSpec.describe "user_groups/index", type: :view do
  before(:each) do
    assign(:user_groups, [
      UserGroup.create!(
        :user_group_name => "User Group Name"
      ),
      UserGroup.create!(
        :user_group_name => "User Group Name"
      )
    ])
  end

  it "renders a list of user_groups" do
    render
    assert_select "tr>td", :text => "User Group Name".to_s, :count => 2
  end
end
