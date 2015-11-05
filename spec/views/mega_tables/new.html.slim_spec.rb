require 'rails_helper'

RSpec.describe "mega_tables/new", type: :view do
  before(:each) do
    assign(:mega_table, MegaTable.new(
      :name => "MyString"
    ))
  end

  it "renders new mega_table form" do
    render

    assert_select "form[action=?][method=?]", mega_tables_path, "post" do

      assert_select "input#mega_table_name[name=?]", "mega_table[name]"
    end
  end
end
