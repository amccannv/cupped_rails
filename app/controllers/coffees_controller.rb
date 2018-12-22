class CoffeesController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def index
    @coffees = Coffee.all
  end

  def show
    @coffee = Coffee.find(params[:id])
  end

  def new
    @coffee = Coffee.new
  end

  def create
    @coffee = Coffee.new(coffee_params)
    if @coffee.save
      flash[:success] = 'Coffee successfully added'
      redirect_to coffee_path(@coffee)
    else
      render 'new'
    end
  end

  private

  def coffee_params
    params.require(:coffee).permit(:name)
  end
end
