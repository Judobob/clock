json.array!(@general_enquiries) do |general_enquiry|
  json.extract! general_enquiry, :id, :email, :message
  json.url general_enquiry_url(general_enquiry, format: :json)
end
