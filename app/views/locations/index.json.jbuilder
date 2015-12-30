json.array!(@locations) do |location|
  json.extract! location, :id, :display_name, :location_name, :description, :address, :zip, :image, :truck, :menu_id, :order_id
  json.url location_url(location, format: :json)
end
