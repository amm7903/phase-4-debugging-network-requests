class MoviesController < ApplicationController
 
  def create
    movies = Movie.create(movie_params)
    render json: movies, status: :created
    
  end
  
  def index
    movies = Movie.all
    render json: movies
  end

  private
  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end
