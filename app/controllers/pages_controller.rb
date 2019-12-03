class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @resource = User.new
  end

  def calendar
  end

  def confirmation
  end

  def dashboard
    if params[:query].present?
      @veggies = Veggy.search_by_veggy_and_season(params[:query])
    else
      @veggies = Veggy.all
    end

    @planters = current_user.planters.includes(planted_veggies: :veggy)
    @planter = Planter.new
    @new_planted_veggy = PlantedVeggy.new

    if params[:query]
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js
      end
    end
  end
end
