require 'rails_helper'

RSpec.describe "nationalities/edit", type: :view do
  before(:each) do
    @nationality = assign(:nationality, Nationality.create!(
      :name => "MyText"
    ))
  end

  it "renders the edit nationality form" do
    render

    assert_select "form[action=?][method=?]", nationality_path(@nationality), "post" do

      assert_select "textarea#nationality_name[name=?]", "nationality[name]"
    end
  end
end
