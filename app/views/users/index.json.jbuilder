json.array!(@users) do |user|
  json.extract! user, :fname, :lname, :email, :phone, :city
  json.url user_url(user, format: :json)
end