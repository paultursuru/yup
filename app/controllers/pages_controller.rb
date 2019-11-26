class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def calendar
  end

  def dashboard
    @veggies = Veggy.all
    @planters = current_user.planters
  end
end
