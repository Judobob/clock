require 'rails_helper'

RSpec.describe "user_groups/new", type: :view do
  before(:each) do
    assign(:user_group, UserGroup.new(
      :user_group_name => "MyString"
    ))
  end

  it "renders new user_group form" do
    render

    assert_select "form[action=?][method=?]", user_groups_path, "post" do

      assert_select "input#user_group_user_group_name[name=?]", "user_group[user_group_name]"
    end
  end
end
