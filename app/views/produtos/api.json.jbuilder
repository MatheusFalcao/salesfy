json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :desc, :preco, :estoque, :user_id
  
end
