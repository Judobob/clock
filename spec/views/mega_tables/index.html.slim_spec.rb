require 'rails_helper'

RSpec.describe "mega_tables/index", type: :view do
  before(:each) do
    assign(:mega_tables, [
      MegaTable.create!(
        :name => "Name"
      ),
      MegaTable.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of mega_tables" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
