class SunlightsController < ApplicationController

  def index
    if params[:field]
      @sunlights = Sunlight.all(params[:field])
    else
      redirect_to root_path
    end
  end

  def show
    @sunlight = Sunlight.find(params[:id])
  end

end
