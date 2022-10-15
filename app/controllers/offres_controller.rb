class OffresController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  before_action :set_offre, only: [:show, :edit, :update, :destroy]

  def index
    # if current_user.passager.nil? && current_user.conducteur.nil?
    #   redirect_to edit_user_path(current_user)
    # end
    @offres = Offre.all
  end

  def show
  end

  def new
    @offre = Offre.new
  end

  def create!
    @offre = Offre.new(offre_params)
    @offre.user = current_user
    if @offre.save
      redirect_to offres_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @offre.update(offre_params)
    redirect_to offres_path
  end

  def destroy
    @offre.destroy
    redirect_to offres_path
  end

  private

  def offre_params
    params.require(:offre).permit(:description_trajet, :depart, :arrivee, :heure_depart, :prix)
  end

  def set_offre
    @offre = Offre.find(params[:id])
  end


end
