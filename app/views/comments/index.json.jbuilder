json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :CreationDate, :lastUpdated
  json.url comment_url(comment, format: :json)
end
