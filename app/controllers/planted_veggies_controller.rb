class PlantedVeggiesController < ApplicationController
  before_action :set_planted_veggy, only: %I[show edit update destroy plant]
  def index
    @planted_veggies = PlantedVeggy.all
  end

  def show
  end

  def new
    @planted_veggy = PlantedVeggy.new
  end

  def create
    @planted_veggy = PlantedVeggy.new(planter_params)
    @planter = Planter.find(params[:planter_id])

    @planted_veggy.planter = @planter

    if @planted_veggy.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path
    end
  end

  def edit
  end

  def plant
    # @veggy_to_do.initial = true
    @veggy = @planted_veggy.veggy.name
    @watering = ToDoTemplate.new(name: 'watering', description: "it's time to water your #{@veggy}")
    @watering.save!
    today = Date.today.strftime("%Y-%m-%d")
    @planted_veggy.planting_day = today
    @planted_veggy.save
    # num_of_water = @veggy_to_dos.planted_veggy.growing_time / 3
    # num_of_water.times do
    water = ToDo.new(planted_veggy: @planted_veggy, to_do_template: @watering)
    water.due_at = today
    water.save
    # end
  end


  def update
    @planted_veggy = set_planted_veggy
    if @planted_veggy.planting_day.nil?
      @planted_veggy.planting_day = Date.today()

      @planted_veggy.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path
    end
  end

  def destroy
    @planted_veggy.destroy
    redirect_to dashboard_path
  end

  private

  def planter_params
    params.require(:planted_veggy).permit(:name, :size, :orientation, :veggy_id)
  end

  def planted_veggy_params
    params.require(:planted_veggy).permit(:planting_day, :sewing_day)
  end

  def set_planted_veggy
    @planted_veggy = PlantedVeggy.find(params[:id])
  end
end
