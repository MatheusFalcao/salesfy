json.array!(@item_vendas) do |item_venda|
  json.extract! item_venda, :id, :Venda_id
  json.url item_venda_url(item_venda, format: :json)
end
