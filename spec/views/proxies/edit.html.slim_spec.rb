require 'rails_helper'

RSpec.describe "proxies/edit", type: :view do
  before(:each) do
    @proxy = assign(:proxy, Proxy.create!(
      :Name => "MyText",
      :ip_address => "MyString",
      :port => "MyString",
      :active => false
    ))
  end

  it "renders the edit proxy form" do
    render

    assert_select "form[action=?][method=?]", proxy_path(@proxy), "post" do

      assert_select "textarea#proxy_Name[name=?]", "proxy[Name]"

      assert_select "input#proxy_ip_address[name=?]", "proxy[ip_address]"

      assert_select "input#proxy_port[name=?]", "proxy[port]"

      assert_select "input#proxy_active[name=?]", "proxy[active]"
    end
  end
end
