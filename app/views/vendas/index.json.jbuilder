json.array!(@vendas) do |venda|
  json.extract! venda, :id, :User_id, :data
  json.url venda_url(venda, format: :json)
end
