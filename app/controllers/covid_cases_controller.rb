class CovidCasesController < ApplicationController
  before_action :set_covid_case, only: [:show, :edit, :update, :destroy]

  def index
    @q = CovidCase.all.ransack(params[:q])
    @pagy, @covid_cases = pagy(@q.result.includes(:state).order("states.name"))
  end

  def show; end

  def new
    @covid_case = CovidCase.new
  end

  def edit
    @states = State.all.order(:name)
  end

  def create
    @covid_case = CovidCase.new(covid_case_params)

    respond_to do |format|
      if @covid_case.save
        format.html { redirect_to @covid_case, notice: 'Caso COVID criado com sucesso' }
        format.json { render :show, status: :created, location: @covid_case }
      else
        format.html { render :new }
        format.json { render json: @covid_case.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @covid_case.update(covid_case_params)
        format.html { redirect_to @covid_case, notice: 'Caso COVID atualizado com sucesso' }
        format.json { render :show, status: :ok, location: @covid_case }
      else
        format.html { render :edit }
        format.json { render json: @covid_case.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @covid_case.destroy
    respond_to do |format|
      format.html { redirect_to covid_cases_url, notice: 'Caso COVID excluído com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    def set_covid_case
      @covid_case = CovidCase.find(params[:id])
    end

    def covid_case_params
      params.require(:covid_case).permit(:amount, :death, :suspect, :cured, :state_id)
    end
end
