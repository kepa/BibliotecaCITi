json.array!(@rents) do |rent|
  json.extract! rent, :id, :name, :email, :due_date
  json.url rent_url(rent, format: :json)
end
