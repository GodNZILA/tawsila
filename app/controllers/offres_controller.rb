class OffresController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  before_action :set_offre, only: %i[show edit update destroy]

  def index
    # if current_user.passager.nil? && current_user.conducteur.nil?
    #   redirect_to edit_user_path(current_user)
    # end
    @offres = Offre.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @offre = Offre.new
  end

  def create
    @offre = Offre.new(offre_params)
    # @offre.voiture_id = current_user.id
    if @offre.save
      redirect_to offres_path, notice: 'Votre offre a bien été créée'
    else
      render :new, status: :unprocessable_entity
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
    params.require(:offre).permit(:description_trajet, :depart, :arrivee, :heure_depart, :prix, :voiture_id)
  end

  def set_offre
    @offre = Offre.find(params[:id])
  end



end
