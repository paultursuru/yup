class VeggiesController < ApplicationController
  before_action :set_veggy, only: %I[show]

  def index
    @veggies = Veggy.all
  end

  def show
  end

  private

  def set_veggy
    @veggy = Veggy.find(params[:id])
  end
end
