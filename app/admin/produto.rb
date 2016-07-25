ActiveAdmin.register Produto do 
  
scope_to :current_user

permit_params :nome, :desc, :preco, :estoque

filter :nome
filter :desc
filter :preco
filter :estoque
filter :created_at

index do
     
    column("Codigo") {|produto| produto.id}
    column("Nome") {|produto| produto.nome}
    column("Descrição") {|produto| produto.desc}
    column("Valor Unitário") {|produto| produto.preco}
    column("Unidades Em Estoque") {|produto| produto.estoque}
    column("Ultima Modificação") {|produto| produto.updated_at}
    
    actions
  end

form title: 'Cadastrando um novo Produto' do |f|
    inputs 'Produto' do
      
      input :nome
      input :desc
      input :preco
      input :estoque
      actions
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
