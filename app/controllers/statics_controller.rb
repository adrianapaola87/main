class StaticsController < ApplicationController
skip_before_action :authenticate_user!
  def index 
  	@peliculas = Pelicula.all 
   end

  def about
  end
end
