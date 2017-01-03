class BeersController < ApplicationController

  def index
  end

  def search
    @beers = Beer.search(params[:search])
    render json: @beers
  end

  def view
  end

end
