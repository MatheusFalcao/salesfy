json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :desc, :preco, :estoque, :user_id
  json.url produto_url(produto, format: :json)
end
