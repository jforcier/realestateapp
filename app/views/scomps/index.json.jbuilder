json.array!(@scomps) do |scomp|
  json.extract! scomp, :id, :city, :address, :size, :sale_price, :cap_rate, :closing_date, :buyer, :seller, :building_type, :building_class, :sale_type, :floors, :buyer_broker, :buyer_agent, :listing_broker, :listing_agent, :notes
  json.url scomp_url(scomp, format: :json)
end
