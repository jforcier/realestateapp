json.array!(@listings) do |listing|
  json.extract! listing, :id, :city, :address, :suite, :size, :building_type, :building_class, :asking_rate, :opex, :lease_type, :brokerage, :notes
  json.url listing_url(listing, format: :json)
end
