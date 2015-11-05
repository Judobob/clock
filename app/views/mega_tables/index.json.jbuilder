json.array!(@mega_tables) do |mega_table|
  json.extract! mega_table, :id, :name
  json.url mega_table_url(mega_table, format: :json)
end
