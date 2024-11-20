class RestaurantsController < ApplicationController
  def index
  @restaurants = Restaurant.all
  end

  def new
    # Initialize a new Restaurant object for the form
    @restaurant = Restaurant.new
  end

  def create
    # Create a new restaurant with submitted params
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      # Redirect to the show page of the newly created restaurant
      # with a success flash message
      redirect_to restaurant_path(@restaurant),
                  notice: 'Restaurant was successfully created.'
    else
      # If validation fails, re-render the new form
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

end
