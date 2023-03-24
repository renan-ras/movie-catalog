class HomeController < ApplicationController
  def index
    @movies = Movie.published

    if params[:filter] == 'released'
      @movies = Movie.published.where("release_year <= ?", Time.now.year)
    elsif params[:filter] == 'not_released'
      @movies = Movie.published.where("release_year > ?", Time.now.year)
    else
      @movies = Movie.published
    end

  end

  # def draft
  #   #@recipes = Recipe.draft
  # end
end