class RemoveProdutoIdToVendas < ActiveRecord::Migration
  def change
     remove_column :vendas, :Produto_id
  end
end
