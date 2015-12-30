json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :phone_number, :address, :zip, :user_id, :order_id
  json.url business_url(business, format: :json)
end
