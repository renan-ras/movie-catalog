class DirectorsController < ApplicationController
  
  def index
  end
  
  def show
    @director = Director.find(params[:id])
    @movies = @director.movies
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(params.require(:director)
    .permit(:name, :nationality, :birth_date, :genre_id))

    if Director.exists?(name: @director.name)
      flash.alert = 'Este diretor já existe!'
      return redirect_to new_director_path
    end
  
    if @director.save
      flash.notice = 'Informações salvas com sucesso!'
      return redirect_to new_director_path
    end

    render :new
  end
end