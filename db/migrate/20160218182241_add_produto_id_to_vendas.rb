class AddProdutoIdToVendas < ActiveRecord::Migration
  def change
    add_reference :vendas, :Produto, index: true
  end
end
