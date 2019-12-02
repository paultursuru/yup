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
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js  # <-- idem
      end
    end
  end

  def edit
  end

  def plant
    # @veggy_to_do.initial = true
    @veggy = @planted_veggy.veggy.name
    @watering_period = @planted_veggy.veggy.watering_period
    @num_of_water = (@planted_veggy.veggy.growing_time / @watering_period).round
    # binding.pry

    @watering = ToDoTemplate.new(name: 'Water  💦', description: "your #{@veggy.downcase}")
    @watering.save!
    @thining = ToDoTemplate.new(name: 'Thin ✂️', description: "your #{@veggy.downcase}")
    @thining.save!
    @pruning = ToDoTemplate.new(name: 'Prune ✂️', description: "your #{@veggy.downcase}")
    @pruning.save!
    @say_hi = ToDoTemplate.new(name: 'Say hi 👋', description: "to your favorite #{@veggy.downcase}")
    @say_hi.save!
    @give_love = ToDoTemplate.new(name: 'Give love ❤️', description: "to #{@veggy.downcase}")
    @give_love.save!
    @food_time = ToDoTemplate.new(name: 'Harvest 🍴', description: "your #{@veggy.downcase}!")
    @food_time.save!


    # creating the planting day here
    event_date = Date.today
    @planted_veggy.planting_day = event_date
    # @planted_veggy.save
    if @planted_veggy.save
      # computing the number of events needed
      if @veggy == "Tomato" || @veggy == "Cucumber" || @veggy == "Squash" || @veggy == "Pepper" || @veggy == "Rosemary" || @veggy == "Genovese basil"
        prune_date = event_date + (@planted_veggy.veggy.growing_time / 2).round
        ToDo.create(planted_veggy: @planted_veggy, to_do_template: @pruning, due_at: prune_date.strftime("%Y-%m-%d"))
      end

    # thining event : only once
    if @planted_veggy.veggy.thining_delay > 0
      thin_date = event_date + @planted_veggy.veggy.thining_delay
      ToDo.create(planted_veggy: @planted_veggy, to_do_template: @thining, due_at: thin_date.strftime("%Y-%m-%d"))
    end
    # computing the number of events needed
    # binding.pry
    @num_of_water.times do
      ToDo.create(planted_veggy: @planted_veggy, to_do_template: @watering, due_at: event_date.strftime("%Y-%m-%d"))
      event_date += @watering_period
    end

    # binding.pry
    hi_event = Date.today + (@planted_veggy.veggy.growing_time / 4).round
    ToDo.create(planted_veggy: @planted_veggy, to_do_template: @say_hi, due_at: hi_event.strftime("%Y-%m-%d"))
    love_event = Date.today + (@planted_veggy.veggy.growing_time / 2)
    ToDo.create(planted_veggy: @planted_veggy, to_do_template: @give_love, due_at: love_event.strftime("%Y-%m-%d"))
    eat_event = Date.today + @planted_veggy.veggy.growing_time
    ToDo.create(planted_veggy: @planted_veggy, to_do_template: @food_time, due_at: eat_event.strftime("%Y-%m-%d"))

      respond_to do |format|
        #format.html { redirect_to restaurant_path(@restaurant) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    end
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
