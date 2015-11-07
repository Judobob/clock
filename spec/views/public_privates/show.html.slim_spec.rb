require 'rails_helper'

RSpec.describe "public_privates/show", type: :view do
  before(:each) do
    @public_private = assign(:public_private, PublicPrivate.create!(
      :private_key => "MyText",
      :public_key => "MyText",
      :message_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
