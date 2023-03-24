class HomeController < ApplicationController
  def index
    # @movies = Movie.published
    # @radio_selection = [true, false, false]

    if params[:filter] == 'released'
      @movies = Movie.published.where("release_year <= ?", Time.now.year)
      @radio_selection = [false, true, false]
    elsif params[:filter] == 'not_released'
      @movies = Movie.published.where("release_year > ?", Time.now.year)
      @radio_selection = [false, false, true]
    else
      @movies = Movie.published
      @radio_selection = [true, false, false]
    end

  end

  # def draft
  #   #@recipes = Recipe.draft
  # end
end