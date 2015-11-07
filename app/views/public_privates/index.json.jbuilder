json.array!(@public_privates) do |public_private|
  json.extract! public_private, :id, :private_key, :public_key, :message_id
  json.url public_private_url(public_private, format: :json)
end
