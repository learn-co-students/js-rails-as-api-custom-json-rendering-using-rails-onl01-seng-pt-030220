class BirdsController < ApplicationController
  
  9def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
  end

  def show
    bird = Bird.find_by(id: params[:id])
    if bird 
      render json: {id: bird.id, name: bird.name, species: bird.species }
    else 
      render json { message: 'Bird not found' }
    end 
  end 

  # def show 
  #   bird = Bird.find_by(id: params[:id])
  #   render json: bird.slice(:id, :name, :species)
  # end 

end