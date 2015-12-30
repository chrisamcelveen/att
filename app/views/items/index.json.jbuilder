json.array!(@items) do |item|
  json.extract! item, :id, :name, :image, :description, :price, :available, :fire_time, :menu_id, :order_id
  json.url item_url(item, format: :json)
end
