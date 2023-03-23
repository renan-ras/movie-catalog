class GenresController < ApplicationController

  def index
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = @genre.movies
  end
  
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(name: params[:genre][:name])

    if Genre.exists?(name: @genre.name)
      flash.alert = 'Este gênero já existe!'
      return redirect_to new_genre_path
    end
  
    if @genre.save
      flash.notice = 'Informações salvas com sucesso!'
      return redirect_to new_genre_path
    end

    render :new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    deu_certo = @genre.update(params.require(:genre)
    .permit(:name))

    if deu_certo
      return redirect_to genre_path(@genre.id)
    end

    render :edit
  end

  def destroy
    genre = Genre.find(params[:id])
    genre.destroy
    redirect_to new_genre_path
  end
end