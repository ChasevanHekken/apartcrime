class HomeController < ApplicationController
  def index
    gon.crimes = Crime.get_coordinates

    gon.marker_points = Apart.marker_data
  end
end


