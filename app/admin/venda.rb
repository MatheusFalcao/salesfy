ActiveAdmin.register Venda do
scope_to :current_user
actions :index, :show

filter :data
filter :valor_total

  index do
     
    column("Numero da Venda", :sortable => :id) {|vendas| link_to "##{vendas.id} ", webapp_venda_path(vendas) }
    column("Data da Venda") {|vendas| vendas.data}
    column("Usuario") {|vendas| vendas.User.email}
    column("Forma de Pagamento") {|vendas| vendas.forma_de_pagamento}
    column("Valor Total") {|vendas| number_to_currency(vendas.valor_total, unit: "R$")}
    
    actions
  end
  

 show do
    panel "Detalhes da Venda" do
      table_for(venda.ItemVenda) do |t|
        
        t.column("Produto") {|item| auto_link  item.Produto.nome }
        t.column("Quantidade") {|item| venda.ItemVenda.where(:Venda_id => venda.id, :Produto_id => item.Produto.id).last.quantidade }
        t.column("Preço Unitário") {|item| number_to_currency item.Produto.preco , unit: "R$"}
        t.column("Preço")   {|item| number_to_currency venda.ItemVenda.where(:Venda_id => venda.id, :Produto_id => item.Produto.id).last.valor_total, unit: "R$" }
        tr :class => "odd" do
          td 
          td
          td "Total:", :style => "text-align: right;"
          td number_to_currency(venda.valor_total, unit: "R$")
        end
      end
    end
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
