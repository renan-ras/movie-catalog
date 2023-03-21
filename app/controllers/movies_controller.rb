class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if Movie.exists?(title: @movie.title, director_id: @movie.director_id)
      flash.alert = 'Este filme já existe!'
      return redirect_to new_movie_path
    end
  
    if @movie.save
      flash.notice = 'Informações salvas com sucesso!'
      @movie.cover.attach(params[:movie][:cover]) if params[:movie][:cover]
      return redirect_to @movie #new_movie_path
    end

    render :new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    # Could I check duplicates the same way as in create? Or should I check if there are 2 same movies.

    if @movie.update(movie_params)
      @movie.cover.attach(params[:movie][:cover]) if params[:movie][:cover]
      return redirect_to @movie #movie_path(@movie.id)
    end

    render :edit
  end

  def movie_params
    params.require(:movie).permit(:title, :release_year, :synopsis, :origin_country, :duration, :director_id, :genre_id, :cover)
  end
end