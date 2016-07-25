class CreateItemVendas < ActiveRecord::Migration
  def change
    create_table :item_vendas do |t|
      t.references :Venda, index: true

      t.timestamps
    end
  end
end
