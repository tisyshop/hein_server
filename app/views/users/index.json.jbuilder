json.array!(@users) do |user|
  json.extract! user, :id, :username, :skpUsername, :picture, :description, :password, :created_at, :updated_at, :comment, :language_list
  json.url user_url(user, format: :json)
end
