class AddQuantidadeToItemVendas < ActiveRecord::Migration
  def change
    add_column :item_vendas, :quantidade, :integer
  end
end
