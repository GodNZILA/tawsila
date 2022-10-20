class BookingsController < ApplicationController

  before_action :set_booking, only: %i[show edit update destroy]
  def index
    if current_user.passager
      @bookings = Booking.where(passager_id: current_user.passager.id)
    else
      @bookings = Booking.where(offre_id: current_user.conducteur.offre.id)
    end
  end


  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.passager = current_user.passager
    @booking.offre_id = params[:offre_id]
    if @booking.save
      redirect_to bookings_path, notice: 'Votre réservation a bien été créée'
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
    params.require(:booking).permit(:depart, :arrivee, :prix)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
