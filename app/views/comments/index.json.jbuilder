json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :skpUsername, :created_at, :updated_at, :user_id
  json.url comment_url(comment, format: :json)
end
