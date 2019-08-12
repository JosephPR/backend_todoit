class TablaturesController < ApplicationController
  before_action :set_tablature, only: [:show, :update, :destroy]

  # GET /tablatures
  def index
    @tablatures = Tablature.all

    render json: @tablatures
  end

  # GET /tablatures/1
  def show
    render json: @tablature
  end

  # POST /tablatures
  def create
    @tablature = Tablature.new(tablature_params)

    if @tablature.save
      render json: @tablature, status: :created, location: @tablature
    else
      render json: @tablature.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tablatures/1
  def update
    if @tablature.update(tablature_params)
      render json: @tablature
    else
      render json: @tablature.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tablatures/1
  def destroy
    @tablature.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tablature
      @tablature = Tablature.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tablature_params
      params.permit(:name, :url, :description, :composer, :skill)
    end
end
