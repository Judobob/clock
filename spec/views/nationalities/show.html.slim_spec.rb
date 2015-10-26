require 'rails_helper'

RSpec.describe "nationalities/show", type: :view do
  before(:each) do
    @nationality = assign(:nationality, Nationality.create!(
      :name => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
