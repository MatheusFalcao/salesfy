ActiveAdmin.register Caixa do

scope_to :current_user

permit_params :nome, :valor, :data

filter :nome
filter :valor
filter :data

index do
     
    column("Identificação do Caixa") {|caixa| caixa.nome}
    column("Valor em Caixa") {|caixa| caixa.valor}
    column("Ultima Atualização") {|caixa| caixa.data}
    
    
    #actions
  end

form title: 'Cadastrando um novo ponto de Venda' do |f|
    inputs 'Caixa' do
      
      input :nome
      input :valor
    
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
