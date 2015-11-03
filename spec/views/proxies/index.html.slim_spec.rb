require 'rails_helper'

RSpec.describe "proxies/index", type: :view do
  before(:each) do
    assign(:proxies, [
      Proxy.create!(
        :Name => "MyText",
        :ip_address => "Ip Address",
        :port => "Port",
        :active => false
      ),
      Proxy.create!(
        :Name => "MyText",
        :ip_address => "Ip Address",
        :port => "Port",
        :active => false
      )
    ])
  end

  it "renders a list of proxies" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Ip Address".to_s, :count => 2
    assert_select "tr>td", :text => "Port".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
