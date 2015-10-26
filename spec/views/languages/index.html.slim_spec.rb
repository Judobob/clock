require 'rails_helper'

RSpec.describe "languages/index", type: :view do
  before(:each) do
    assign(:languages, [
      Language.create!(
        :name => "MyText"
      ),
      Language.create!(
        :name => "MyText"
      )
    ])
  end

  it "renders a list of languages" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
