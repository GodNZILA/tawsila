class BookingsController < ApplicationController
  before_action :init_booking, only: %i[show]


  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.offre = @offre
    @booking.users_id = current_user.id
    if @booking.save!
      # redirect_to offre_booking_path(@offre, @booking)
      redirect_to offres_path(@offres), notice: "Réservation pour votre #{@offres}, faite avec succée !"
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
  end




  private

  def booking_params
    params.require(:booking).permit(:date_reservation, :prix_calculer, :passager_id, :offre_id)
  end

  def init_booking
    @booking = Booking.find(params[:id])
  end

end
