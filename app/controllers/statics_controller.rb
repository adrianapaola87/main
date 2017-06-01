class StaticsController < ApplicationController
  def index 
  	@peliculas = Pelicula.all 
   end

  def about
  end
end
