json.array!(@caixas) do |caixa|
  json.extract! caixa, :id, :nome, :valor, :data
  json.url caixa_url(caixa, format: :json)
end
