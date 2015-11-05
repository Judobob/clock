require 'rails_helper'

RSpec.describe "mega_tables/show", type: :view do
  before(:each) do
    @mega_table = assign(:mega_table, MegaTable.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
