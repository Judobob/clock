require 'rails_helper'

RSpec.describe "nationalities/index", type: :view do
  before(:each) do
    assign(:nationalities, [
      Nationality.create!(
        :name => "MyText"
      ),
      Nationality.create!(
        :name => "MyText"
      )
    ])
  end

  it "renders a list of nationalities" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
