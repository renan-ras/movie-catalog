class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end
  
  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if Movie.exists?(title: @movie.title, director_id: @movie.director_id)
      return redirect_to new_movie_path, danger: 'Este filme já existe!'
    end
  
    if @movie.save
      @movie.cover.attach(params[:movie][:cover]) if params[:movie][:cover]
      return redirect_to @movie, success: 'Informações salvas com sucesso!'
    end

    flash.danger = 'Erro!'
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
      return redirect_to @movie, success: 'Informações salvas com sucesso!'
    end

    render :edit
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to movies_path, success: 'Informações salvas com sucesso!'
  end

  def publish
    movie = Movie.find(params[:id])
    
    if movie.draft?
      movie.published!
    else
      movie.draft!
    end

    redirect_to movie, success: 'Informações salvas com sucesso!'
  end

  def search
    @movies = Movie.where("title LIKE ?", "%" + params[:q] + "%")
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :release_year, :synopsis, :origin_country, :duration, :director_id, :genre_id, :cover, :status)
  end
end