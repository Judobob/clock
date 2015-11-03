require 'rails_helper'

RSpec.describe "proxies/show", type: :view do
  before(:each) do
    @proxy = assign(:proxy, Proxy.create!(
      :Name => "MyText",
      :ip_address => "Ip Address",
      :port => "Port",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Ip Address/)
    expect(rendered).to match(/Port/)
    expect(rendered).to match(/false/)
  end
end
