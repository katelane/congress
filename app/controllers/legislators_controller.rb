class LegislatorsController < ApplicationController

  def index
    if params[:field]
      @legislators = Legislator.all(params[:field])
    else
      redirect_to root_path
    end
  end

  def show
    @legislator = Legislator.find(params[:id])
  end

end
