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
      return redirect_to new_genre_path, danger: 'Este gênero já existe!'
    end
  
    if @genre.save
      return redirect_to @genre, success: 'Informações salvas com sucesso!'
    end

    flash.danger = 'Erro!'
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
      return redirect_to @genre, success: 'Informações salvas com sucesso!'
    end
    flash.danger = 'Erro!'
    render :edit
  end

  def destroy
    genre = Genre.find(params[:id])
    genre.destroy
    redirect_to genres_path, success: 'Informações salvas com sucesso!'
  end
end