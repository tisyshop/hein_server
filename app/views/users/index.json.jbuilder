json.array!(@users) do |user|
  json.extract! user, :id, :username, :skpUsername, :picture, :description
  json.url user_url(user, format: :json)
end
