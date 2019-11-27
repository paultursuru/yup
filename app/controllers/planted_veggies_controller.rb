class PlantedVeggiesController < ApplicationController
  before_action :set_planted_veggy, only: %I[show edit update]
  def index
    @planted_veggies = PlantedVeggy.all
  end

  def show
  end

  def new
    @planted_veggy = PlantedVeggy.new
  end

  def create
    @planted_veggy = PlantedVeggy.new(planted_veggy_params)

    @planted_veggy.planter = Planter.find(params[:planter_id])

    if @planted_veggy.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @planted_veggy.update(planted_veggy_params)
      redirect_to @planted_veggy, notice: "#{@planted_veggy.name} was successfully updated."
    else
      render :edit
    end
  end

  def dead
    @planted_veggy.dead = true
    @planted_veggy.save
    redirect_to home_path(@planted_veggy)
  end

  private

  def planted_veggy_params
    params.require(:planted_veggy).permit(:name, :size, :orientation, :veggy_id)
  end

  def set_planted_veggy
    @planted_veggy = PlantedVeggy.find(params[:id])
  end
end
