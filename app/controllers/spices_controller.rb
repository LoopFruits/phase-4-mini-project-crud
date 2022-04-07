class SpicesController < ApplicationController
  #GET /spices
  def index
    #returning an array of all spices 
    spices = Spice.all
    render json: spices
  end

  #POST /spices
  def create
    #creating a new spice 
    spice = Spice.create(spice_params)
    #returning spice data, returning status code of 201 
    render json: spice, status: :created
  end

  #PATCH /spices/:id
  def update
    #finding matching spice id 
    spice = find_spice
    #updating the spice 
    spice.update(spice_params)
    #returning spice data
    render json: spice
  end

  #DELETE spices/:id
  def destroy
    #finding the matching id 
    spice = find_spice
    #deleting the spice 
    spice.destroy
  end

  #refactoring params  
  
  private 

  def spice_params
    params.permit(:title, :image, :description, :notes , :rating)
  end

  def find_spice 
    #once again, must use find_by, since we're searching for the matching ids
    Spice.find_by(id: params[:id])
  end

  

end
