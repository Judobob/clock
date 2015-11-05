require 'rails_helper'

RSpec.describe "mega_tables/edit", type: :view do
  before(:each) do
    @mega_table = assign(:mega_table, MegaTable.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit mega_table form" do
    render

    assert_select "form[action=?][method=?]", mega_table_path(@mega_table), "post" do

      assert_select "input#mega_table_name[name=?]", "mega_table[name]"
    end
  end
end
