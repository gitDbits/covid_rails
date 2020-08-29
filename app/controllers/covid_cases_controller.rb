class CovidCasesController < ApplicationController
  before_action :set_covid_case, only: [:show, :edit, :update, :destroy]

  # GET /covid_cases
  # GET /covid_cases.json
  def index
    @covid_cases = CovidCase.all
  end

  # GET /covid_cases/1
  # GET /covid_cases/1.json
  def show
  end

  # GET /covid_cases/new
  def new
    @covid_case = CovidCase.new
  end

  # GET /covid_cases/1/edit
  def edit
  end

  # POST /covid_cases
  # POST /covid_cases.json
  def create
    @covid_case = CovidCase.new(covid_case_params)

    respond_to do |format|
      if @covid_case.save
        format.html { redirect_to @covid_case, notice: 'Covid case was successfully created.' }
        format.json { render :show, status: :created, location: @covid_case }
      else
        format.html { render :new }
        format.json { render json: @covid_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /covid_cases/1
  # PATCH/PUT /covid_cases/1.json
  def update
    respond_to do |format|
      if @covid_case.update(covid_case_params)
        format.html { redirect_to @covid_case, notice: 'Covid case was successfully updated.' }
        format.json { render :show, status: :ok, location: @covid_case }
      else
        format.html { render :edit }
        format.json { render json: @covid_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /covid_cases/1
  # DELETE /covid_cases/1.json
  def destroy
    @covid_case.destroy
    respond_to do |format|
      format.html { redirect_to covid_cases_url, notice: 'Covid case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_covid_case
      @covid_case = CovidCase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def covid_case_params
      params.require(:covid_case).permit(:amount, :death, :suspect, :cured, :state_id)
    end
end
