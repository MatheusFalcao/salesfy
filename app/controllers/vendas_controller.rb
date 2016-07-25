class VendasController < InheritedResources::Base
  
  protect_from_forgery :except => [:new]
  

  def new
  @preco_venda = 0.0
  @user = User.find_by_api_key(params[:api_key])
  
  @venda = Venda.new
  @venda.User_id = @user.id
  @venda.data = params[:data]
  @venda.forma_de_pagamento = params[:forma_de_pagamento]
  @venda.save
  @itens = params[:itens]
  
  
  for i in 0..@itens.length-1
  
  itemVenda = ItemVenda.new
  itemVenda.Venda_id = @venda.id
  itemVenda.Produto_id = @itens[i]["produto_id"]
  itemVenda.quantidade = @itens[i]["qtde"]
  
  #localizando o Produto
  produto = Produto.find_by_id(itemVenda.Produto_id)
  
  #resgatando o valor do Produto
  valor = produto.preco
  
  #calculando o valor total da compra
  itemVenda.valor_total = valor * itemVenda.quantidade
  #Salvando informações no Banco de dados
  itemVenda.save
  
  #atualizando variavel valor toral da Compra
  @preco_venda = itemVenda.valor_total + @preco_venda
  
  #atualizandoe e Salvando o Estoque do Produto
  produto.estoque = produto.estoque - itemVenda.quantidade
  produto.save
  
  @venda.valor_total = @preco_venda
  @venda.save
  
  end 
  
  end
  
  def index
    @venda = Venda.where(User_id: current_user.id)
  end
  
  
  private

    def venda_params
      params.require(:venda).permit(:User_id, :data)
    end
end

