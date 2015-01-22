class HomeController < ApplicationController
  def index
    gon.crimes = Crime.get_coordinates
    Apart.service
  end
end
