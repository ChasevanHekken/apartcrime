class ApartController < ApplicationController

  def index
    @apart = Apart.all
  end

  def show
    @apart = Apart.find(params[:id])
  end

  def new

  end

  def create
    @apart = Apart.create(apart_params)


  end

  private

  def apart_params
    params.require(:apart).permit(    )
  end

end
