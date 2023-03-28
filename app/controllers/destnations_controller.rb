class DestnationsController < ApplicationController
  before_action :set_destnation, only: %i[ show edit update destroy ]

  # GET /destnations or /destnations.json
  def index
    @destnations = Destnation.all
  end

  # GET /destnations/1 or /destnations/1.json
  def show
  end

  # GET /destnations/new
  def new
    @destnation = Destnation.new
  end

  # GET /destnations/1/edit
  def edit
  end

  # POST /destnations or /destnations.json
  def create
    @destnation = Destnation.new(destnation_params)

    respond_to do |format|
      if @destnation.save
        format.html { redirect_to destnation_url(@destnation), notice: "Destnation was successfully created." }
        format.json { render :show, status: :created, location: @destnation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @destnation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destnations/1 or /destnations/1.json
  def update
    respond_to do |format|
      if @destnation.update(destnation_params)
        format.html { redirect_to destnation_url(@destnation), notice: "Destnation was successfully updated." }
        format.json { render :show, status: :ok, location: @destnation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @destnation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destnations/1 or /destnations/1.json
  def destroy
    @destnation.destroy

    respond_to do |format|
      format.html { redirect_to destnations_url, notice: "Destnation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destnation
      @destnation = Destnation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def destnation_params
      params.fetch(:destnation, {})
    end
end
