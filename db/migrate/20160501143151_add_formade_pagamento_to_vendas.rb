class AddFormadePagamentoToVendas < ActiveRecord::Migration
  def change
    add_column :vendas, :forma_de_pagamento, :string
  end
end
