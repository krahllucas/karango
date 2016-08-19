class FormaspagamentosController < ApplicationController
  before_action :set_formaspagamento, only: [:show, :edit, :update, :destroy]

  # GET /formaspagamentos
  # GET /formaspagamentos.json
  def index
    @formaspagamentos = Formaspagamento.all
  end

  # GET /formaspagamentos/1
  # GET /formaspagamentos/1.json
  def show
  end

  # GET /formaspagamentos/new
  def new
    @formaspagamento = Formaspagamento.new
  end

  # GET /formaspagamentos/1/edit
  def edit
  end

  # POST /formaspagamentos
  # POST /formaspagamentos.json
  def create
    @formaspagamento = Formaspagamento.new(formaspagamento_params)

    respond_to do |format|
      if @formaspagamento.save
        format.html { redirect_to @formaspagamento, notice: 'Formaspagamento was successfully created.' }
        format.json { render :show, status: :created, location: @formaspagamento }
      else
        format.html { render :new }
        format.json { render json: @formaspagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formaspagamentos/1
  # PATCH/PUT /formaspagamentos/1.json
  def update
    respond_to do |format|
      if @formaspagamento.update(formaspagamento_params)
        format.html { redirect_to @formaspagamento, notice: 'Formaspagamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @formaspagamento }
      else
        format.html { render :edit }
        format.json { render json: @formaspagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formaspagamentos/1
  # DELETE /formaspagamentos/1.json
  def destroy
    @formaspagamento.destroy
    respond_to do |format|
      format.html { redirect_to formaspagamentos_url, notice: 'Formaspagamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formaspagamento
      @formaspagamento = Formaspagamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formaspagamento_params
      params.require(:formaspagamento).permit(:nome)
    end
end
