json.array!(@user_enquiries) do |user_enquiry|
  json.extract! user_enquiry, :id, :user_profile_id, :description
  json.url user_enquiry_url(user_enquiry, format: :json)
end
