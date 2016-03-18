json.array!(@language_lists) do |language_list|
  json.extract! language_list, :id, :code, :name, :flag
  json.url language_list_url(language_list, format: :json)
end
