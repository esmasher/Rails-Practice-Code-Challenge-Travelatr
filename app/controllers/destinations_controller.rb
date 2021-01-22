class DestinationsController < ApplicationController
  def new
  end

  def edit
  end

  def index
  end

  def show
    @destination = Destination.find(params[:id])
  end
  private
  def destination_params
    params.require(:destination).permit(:name, :country)
  end
end
