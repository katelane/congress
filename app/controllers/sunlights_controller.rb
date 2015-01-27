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

  def new
    @sunlight = Sunlight.new
  end

  def create
    @sunlight = Sunlight.new(loan_request_params)
    @sunlight.user_id = current_user.id
      if @sunlight.save
        redirect_to sunlights_path
      else
        render :new
      end
  end

end
