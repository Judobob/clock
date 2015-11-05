require 'rails_helper'

RSpec.describe "user_groups/edit", type: :view do
  before(:each) do
    @user_group = assign(:user_group, UserGroup.create!(
      :user_group_name => "MyString"
    ))
  end

  it "renders the edit user_group form" do
    render

    assert_select "form[action=?][method=?]", user_group_path(@user_group), "post" do

      assert_select "input#user_group_user_group_name[name=?]", "user_group[user_group_name]"
    end
  end
end
