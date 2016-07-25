class AddProdutoIdToItemVendas < ActiveRecord::Migration
  def change
    add_reference :item_vendas, :Produto, index: true
  end
end
