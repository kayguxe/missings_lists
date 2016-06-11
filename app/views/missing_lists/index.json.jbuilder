json.array!(@missing_lists) do |missing_list|
  json.extract! missing_list, :id, :title, :description
  json.url missing_list_url(missing_list, format: :json)
end
