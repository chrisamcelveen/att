json.array!(@modifiers) do |modifier|
  json.extract! modifier, :id, :name, :image, :description, :price, :item_id, :order_id
  json.url modifier_url(modifier, format: :json)
end
