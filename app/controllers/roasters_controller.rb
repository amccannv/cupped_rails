class RoastersController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def index
    @roasters = Roaster.all
  end

  def show
    @roaster = Roaster.find(params[:id])
  end

  def new
    @roaster = Roaster.new
  end

  def create
    @roaster = Roaster.new(roaster_params)
    if @roaster.save
      flash[:success] = 'Roaster successfully added'
      redirect_to roaster_path(@roaster)
    else
      render 'new'
    end
  end

  private

  def roaster_params
    params.require(:roaster).permit(:name)
  end
end
