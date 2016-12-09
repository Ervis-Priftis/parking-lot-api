class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /spaces
  def index
    @spaces = Space.all

    render json: @spaces
  end

  # GET /spaces/1
  def show
    render json: @space
  end

  # POST /spaces
  def create
    @space = Space.new(space_params)

    if @space.save
      render json: @space, status: :created, location: @space
    else
      render json: @space.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spaces/1
  def update
    if @space.user == current_user

      if @space.update(space_params)
        render json: @space
      else
        render json: @space.errors, status: :unprocessable_entity
      end
    else
      render json: { erros: ["Unauthorized"] },
      status: 401
    end
  end

  # DELETE /spaces/1
  def destroy
    if @space.user == current_user
      @space.destroy
    else
      render json: { errors: ["Unauthorized"] },
      status: 401
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_space
    @space = Space.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def space_params
    params.require(:space).permit(:lat, :lng, :image, :width, :length, :details, :user_id)
  end
end
