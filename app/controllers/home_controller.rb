class HomeController < ApplicationController
  def index
    gon.homicide = Crime.homicide
    gon.rape = Crime.rape
    gon.robbery = Crime.robbery
    gon.assault = Crime.assault
    gon.burglary = Crime.burglary
    gon.theft = Crime.theft
    gon.gta = Crime.gta

    gon.marker_points = Apart.marker_data
  end
end
