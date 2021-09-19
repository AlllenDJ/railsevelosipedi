class DarbiniekisController < ApplicationController
  before_action :set_darbinieki, only: %i[ show edit update destroy ]

  # GET /darbiniekis or /darbiniekis.json
  def index
    @darbiniekis = Darbinieki.all
  end

  # GET /darbiniekis/1 or /darbiniekis/1.json
  def show
  end

  # GET /darbiniekis/new
  def new
    @darbinieki = Darbinieki.new
  end

  # GET /darbiniekis/1/edit
  def edit
  end

  # POST /darbiniekis or /darbiniekis.json
  def create
    @darbinieki = Darbinieki.new(darbinieki_params)

    respond_to do |format|
      if @darbinieki.save
        format.html { redirect_to @darbinieki, notice: "Darbinieki was successfully created." }
        format.json { render :show, status: :created, location: @darbinieki }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @darbinieki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /darbiniekis/1 or /darbiniekis/1.json
  def update
    respond_to do |format|
      if @darbinieki.update(darbinieki_params)
        format.html { redirect_to @darbinieki, notice: "Darbinieki was successfully updated." }
        format.json { render :show, status: :ok, location: @darbinieki }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @darbinieki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /darbiniekis/1 or /darbiniekis/1.json
  def destroy
    @darbinieki.destroy
    respond_to do |format|
      format.html { redirect_to darbiniekis_url, notice: "Darbinieki was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_darbinieki
      @darbinieki = Darbinieki.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def darbinieki_params
      params.require(:darbinieki).permit(:starta_laiks, :beigu_laiks, :vards, :uzvards, :epasts, :telefons)
    end
end
