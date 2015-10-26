require 'rails_helper'

RSpec.describe "nationalities/new", type: :view do
  before(:each) do
    assign(:nationality, Nationality.new(
      :name => "MyText"
    ))
  end

  it "renders new nationality form" do
    render

    assert_select "form[action=?][method=?]", nationalities_path, "post" do

      assert_select "textarea#nationality_name[name=?]", "nationality[name]"
    end
  end
end
