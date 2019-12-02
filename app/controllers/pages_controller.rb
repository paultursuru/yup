class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @resource = User.new
  end

  def calendar
  end

  def dashboard
    @veggies = Veggy.all
    @planters = current_user.planters
    @planter = Planter.new
    @new_planted_veggy = PlantedVeggy.new
  end
end
