class ItemVenda < ActiveRecord::Base
  belongs_to :Venda
  belongs_to :Produto
end
