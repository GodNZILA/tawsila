class VoituresController < ApplicationController
  before_action :set_voiture, only: %i[show edit update destroy]

  def index
    @voitures = Voiture.where(user: current_user)
  end

  def show
    @voiture = Voiture.find(params[:id])
  end

  def new
    @voiture = Voiture.new
  end

  def create!
    @voiture = Voiture.new(voiture_params)
    @voiture.user = current_user
    if @voiture.save
      redirect_to voitures_path
    else
      render :new
    end
  end

  def edit
    @voiture = Voiture.find(params[:id])
  end

  def update
    @voiture = Voiture.find(params[:id])
    @voiture.update(voiture_params)
    redirect_to voitures_path
  end

  def destroy
    @voiture = Voiture.find(params[:id])
    @voiture.destroy
    redirect_to voitures_path
  end

  private

  def voiture_params
    params.require(:voiture).permit(:marque, :modele, :couleur, :immatriculation, :nb_places)
  end

  def set_voiture
    @voiture = Voiture.find(params[:id])
  end
end
