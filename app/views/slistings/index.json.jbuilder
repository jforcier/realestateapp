json.array!(@slistings) do |slisting|
  json.extract! slisting, :id, :city, :address, :size, :price, :building_type, :building_class, :sale_type, :floors, :parking_string, :brokerage, :notes
  json.url slisting_url(slisting, format: :json)
end
