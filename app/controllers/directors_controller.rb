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
    @director = Director.new(director_params)

    if Director.exists?(name: @director.name)
      return redirect_to new_director_path, danger: 'Este diretor já existe!'
    end
  
    if @director.save
      return redirect_to @director, success: 'Informações salvas com sucesso!'
    end

    render :new
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    deu_certo = @director.update(director_params)

    if deu_certo
      return redirect_to @director, success: 'Informações salvas com sucesso!'
    end

    render :edit
  end

  def destroy
    director = Director.find(params[:id])
    director.destroy
    redirect_to directors_path, success: 'Informações salvas com sucesso!'
  end

  private

  def director_params
    params.require(:director).permit(:name, :nationality, :birth_date, :genre_id)
  end

end