json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :about, :url
  json.url organization_url(organization, format: :json)
end
