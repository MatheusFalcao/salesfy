class Venda < ActiveRecord::Base
  belongs_to :User
  has_many :ItemVenda
end
