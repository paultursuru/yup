class PlantersController < ApplicationController
  before_action :set_planter, only: %I[show edit update destroy]

  def index
    @planters = Planter.all
  end

  def show
  end

  def new
    @planter = Planter.new
  end

  def create
    @planter = Planter.new(planter_params)
    @new_planted_veggy = PlantedVeggy.new
    @veggies = Veggy.all
    @planters = current_user.planters
    @planter.user = current_user
    @planter.color = ['red', 'blue', 'green', 'purple', 'orange'].sample

    # @planter.color = ["red", "green"].sample

    if @planter.save
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js
      end
    else
      # @errors = @planter.errors
      respond_to do |format|
        format.js
      end
    end
  end

  def edit
  end

  def update
    if @planter.update(planter_params)
      redirect_to @planter, notice: "#{@planter.name} was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @planter.destroy
    redirect_to dashboard_path
  end

  private

  def planter_params
    params.require(:planter).permit(:name, :size, :sun, :color)
  end

  def set_planter
    @planter = Planter.find(params[:id])
  end
end
