class SelectMoviesController < ApplicationController
	before_action :authenticate_user!
	
  def index
		@peliculas = Pelicula.all
 		
		if params[:search]
			@peliculas = Pelicula.search(params[:search]).order("created_at DESC")			
		elsif params[:search_director]
			@peliculas = Pelicula.search_director(params[:search_director]).order("created_at DESC")
			
		elsif params[:search_year]
			@pelicula = Pelicula.search_year(params[:search_year]).order("created_at DESC")
			
		elsif params[:search_genre]
			@Pelicula = Pelicula.search_genre(params[:search_genre]).order("created_at DESC")
		end

	end
end