class PassagersController < ApplicationController
  before_action :init_passager, only: %i[show]
  before_action :init_offre, only: %i[new create]

  def index
    @passagers = Passager.all
  end

  def show
    @passager = Passager.find(params[:id])
  end

  def new
    @passager = Passager.new
  end

  def create
    @passager = Passager.new(passager_params)
    @passager.offre = @offre
    @passager.users_id = current_user.id
    if @passager.save!
      # redirect_to offre_booking_path(@offre, @booking)
      redirect_to offres_path(@offres), notice: "Réservation pour votre #{@offres}, faite avec succée !"
    else
      render :new
    end
    
  end
  end
end
