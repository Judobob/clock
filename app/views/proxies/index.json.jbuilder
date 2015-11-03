json.array!(@proxies) do |proxy|
  json.extract! proxy, :id, :Name, :ip_address, :port, :active
  json.url proxy_url(proxy, format: :json)
end
