json.array!(@users) do |user|
  json.extract! user, :id, :latitude, :longitutude, :address, :title
  json.url user_url(user, format: :json)
end
