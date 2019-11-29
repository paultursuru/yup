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
    @planter.user = current_user
    @planter.color = ["#004445", "#2c7873", "#ffd800", "#016075", "#931621"].sample

    # @planter.color = ["red", "green"].sample

    if @planter.save
      redirect_to dashboard_path
    else
      render :new
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
    params.require(:planter).permit(:name, :size, :orientation)
  end

  def set_planter
    @planter = Planter.find(params[:id])
  end
end
