json.array!(@products) do |product|
  json.extract! product, :price, :in_stock_count, :description
  json.url product_url(product, format: :json)
end
