class HomeController < ApplicationController
  def index
    gon.crimes = Crime.get_coordinates
  end
end
