class DestnationsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  # GET /destnations or /destnations.json
  def index
    destnations = Destnation.select(:id, :name, :image, :location, :description, :price)
    render json: destnations
  end

  # GET /destnations/1 or /destnations/1.json
  def show
    destnation = Destnation.select(:id, :name, :image, :location, :description, :price).find(params[:id])
    render json: destnation
  end

  # POST /destnations or /destnations.json
  # POST /destinations or /destinations.json
  def create
    destnation = Destnation.new(destnation_params)

    if destnation.save
      render json: destnation, status: :created
    else
      render json: { errors: destnation.errors.full_messages }, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /destnations/1 or /destnations/1.json
  def update
    destnation = Destnation.find(params[:id])
    destnation.update!(destnation_params)
    render json: destnation
  end
  

  # DELETE /destnations/1 or /destnations/1.json
  def destroy
    destnation = Destnation.find(params[:id])
    destnation.destroy
    head :no_content
  end

  private
    # Only allow a list of trusted parameters through.
  def destnation_params
    params.require(:destnation).permit(:name, :image, :location, :description, :price)
  end      
   

 def render_unprocessable_entity_response(exception)
      render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end