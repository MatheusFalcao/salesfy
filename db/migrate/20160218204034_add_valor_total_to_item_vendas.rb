class AddValorTotalToItemVendas < ActiveRecord::Migration
  def change
    add_column :item_vendas, :valor_total, :integer
  end
end
