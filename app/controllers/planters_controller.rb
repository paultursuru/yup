class PlantersController < ApplicationController
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

    if @planter.save
      redirect_to root_path
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

  def dead
    @planter.dead = true
    @planter.save
    redirect_to home_path(@planter)
  end

  private

  def planter_params
    params.require(:planter).permit(:name, :size, :orientation)
  end

  def set_planter
    @planter = Planter.find(params[:id])
  end
end
