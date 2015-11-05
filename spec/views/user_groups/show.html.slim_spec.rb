require 'rails_helper'

RSpec.describe "user_groups/show", type: :view do
  before(:each) do
    @user_group = assign(:user_group, UserGroup.create!(
      :user_group_name => "User Group Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User Group Name/)
  end
end
