json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :id, :user_id, :user_first_name, :user_second_name, :user_email
  json.url user_profile_url(user_profile, format: :json)
end
