class BookingsController < ApplicationController

  before_action :set_booking, only: %i[show edit update destroy]
  # def index
  #   if !params[:passager_id].nil? && params[:conducteur_id].nil?
  #     @bookings = Booking.where(passager_id: current_user.passager.id)
  #   elsif params[:passager_id].nil? && !params[:conducteur_id].nil?
  #     offre_ids = Offre.where(voiture_id: current_user.conducteur.voitures.pluck(:id)).pluck(:id)
  #     @bookings = Booking.where(offre_id: offre_ids)

  #   end
  # end

  def index
    index_conducteur
    render "index_conducteur"
  end

  def index_passager
    @bookings = Booking.where(passager_id: current_user.passager.id)
  end

  def index_conducteur
    offre_ids = Offre.where(voiture_id: current_user.conducteur.voitures.pluck(:id)).pluck(:id)
    @bookings = Booking.where(offre_id: offre_ids)
  end


  def new
    @booking = Booking.new
    @offre = Offre.find(params[:offre_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.passager = current_user.passager
    # @booking.offre_id = params[:offre_id]
    if @booking.save!
      if current_user.passager
      redirect_to passager_bookings_path(current_user.passager), notice: 'Votre réservation a bien été créée'
      else
        redirect_to conducteur_bookings_path(current_user.conducteur), notice: 'Votre réservation a bien été créée'
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end


  def edit

  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end


  def destroy

    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:depart, :arrivee, :statut, :prix, :offre_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
