class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    pet = Pet.create(pet_params)
    redirect_to pet_path(pet)
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :category, :address, :found_on)
  end
end




