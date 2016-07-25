class AddValorTotalToVendas < ActiveRecord::Migration
  def change
    add_column :vendas, :valor_total, :float
  end
end
