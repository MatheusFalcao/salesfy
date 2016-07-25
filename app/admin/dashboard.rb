ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }
  
  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span "Esta é sua Api Key"
        if current_user.api_key == nil
          @usr = User.find(current_user.id) 
          @usr.api_key = Digest::SHA2.hexdigest("#{@usr.id}")
          @usr.save
          small "#{@usr.api_key}"
        else
          small "#{current_user.api_key}"
        end
      end
    end
  
  
  
  columns do

      column do
        panel "Produtos Recentes" do
          table_for current_user.produtos.last(5) do |p|
           p.column("Nome do Produto") {|produto| produto.nome}
           p.column("Quantidade em Estoque") {|produto| produto.estoque}
           p.column("Preço do Produto") {|produto| produto.preco}
           
          end
        end
      end
    
      column do
        panel "Vendas Recentes" do
         table_for current_user.vendas.last(5) do |t|
         t.column("Codigo da Venda") {|venda| venda.id}
         t.column("Valor da Venda") {|venda| venda.valor_total}
         end
        end
      end
      

    end # columns
    
  end
end
