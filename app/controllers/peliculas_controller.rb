
class PeliculasController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
  
    def index
    @peliculas = Pelicula.all
    if params[:search]
     @peliculas = Pelicula.search(params[:search]).order("created_at DESC")
      @@my_value=@peliculas
      redirect_to peliculas_index_search_path
    elsif params[:search_director]
    @peliculas = Pelicula.search_director(params[:search_director]).order("created_at DESC")
      redirect_to peliculas_index_search_path
      @@my_value=@peliculas
    elsif params[:search_year]
      @peliculas = Pelicula.search_year(params[:search_year]).order("created_at DESC")
      redirect_to peliculas_index_search_path
      @@my_value=@peliculas
    elsif params[:search_genres]
      @pelicula = Pelicula.search_genre(params[:search_genre]).order("created_at DESC")
      @@my_value=@peliculas
      redirect_to peliculas_index_search_path
    end
  end
  
  def index_search
    @peliculas = @@my_value
 
    if params[:search]
      @peliculas_s = Pelicula.search(params[:search]).order("created_at DESC")
    elsif params[:search_director]
      @peliculas_s = Pelicula.search_director(params[:search_director]).order("created_at DESC")
    elsif params[:search_year]
      @peliculas_s = Pelicula.search_year(params[:search_year]).order("created_at DESC")
    elsif params[:search_genre]
      @peliculas_s = Pelicula.search_genre(params[:search_genre]).order("created_at DESC")
    end
  end

  def show
      @pelicula = Pelicula.find(params[:id])
    end

  def new
    @pelicula = Pelicula.new
  end

  def create
    @pelicula = Pelicula.new(peli_params)
    if @pelicula.save
      redirect_to peliculas_path, :notice => "Se ha guardado la peli!"
    else
      render "new"
    end
  end

  def edit
    @pelicula = Pelicula.find(params[:id])
  end

  def update
    @pelicula = Pelicula.find(params[:id])
    if @pelicula.update_attributes(peli_params)
      redirect_to peliculas_path, :notice => "exito!"
    else
      render "edit"
    end
  end

  def destroy
    @pelicula = Pelicula.find(params[:id])
    @pelicula.destroy
    redirect_to peliculas_path, :notice => "Borrado"
  end
  private
      def peli_params
         params.require(:pelicula).permit(:name, :description, :stars, :director, :year, :genre, :url)
      end
end