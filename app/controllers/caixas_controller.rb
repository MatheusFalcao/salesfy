class CaixasController < InheritedResources::Base
  

  def balanco
    @usuario = User.find_by_api_key(params[:api_key])
    @caixa = Caixa.where(params[:id])

    @caixa.valor = params[:valor]
    @caixa.data = params[:data]

  end
  
  def api
    
    @usuario = User.find_by_api_key(params[:api_key])
    @caixa = Caixa.where(User_id: @usuario.id)

  end


  # GET /caixas/new
  def new
    @caixa = Caixa.new
  end

  # POST /caixas
  # POST /caixas.json
  def create
    @caixa = Produto.new(produto_params)
    @caixa.user = current_user

    respond_to do |format|
      if @caixa.save
        format.html { redirect_to @caixa, notice: 'Caixa was successfully created.' }
        format.json { render :show, status: :created, location: @caixa }
      else
        format.html { render :new }
        format.json { render json: @caixa.errors, status: :unprocessable_entity }
      end
    end
  end



  private

    def caixa_params
      params.require(:caixa).permit(:nome, :valor, :data)
    end
end

