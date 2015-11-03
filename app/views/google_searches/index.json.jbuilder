json.array!(@google_searches) do |google_search|
  json.extract! google_search, :id, :user_id, :search, :result, :user_id, :ip_address
  json.url google_search_url(google_search, format: :json)
end
