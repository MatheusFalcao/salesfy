class ItemVendasController < InheritedResources::Base

  private

    def item_venda_params
      params.require(:item_venda).permit(:Venda_id)
    end
end

