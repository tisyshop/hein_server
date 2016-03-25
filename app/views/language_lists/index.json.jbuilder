json.array!(@language_lists) do |language_list|
  json.extract! language_list, :id, :code, :name, :flag, :mothertongue, :learnedLanguage, :created_at, :updated_at
  json.url language_list_url(language_list, format: :json)
end
