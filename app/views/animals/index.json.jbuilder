json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :species, :summary, :fullDescription, :amount, :amountRaised
  json.url animal_url(animal, format: :json)
end
