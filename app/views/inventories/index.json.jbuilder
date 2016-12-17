json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :quantity, :isbn
  json.url inventory_url(inventory, format: :json)
end
