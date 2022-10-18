class BookingsController < ApplicationController
  def index
    if current_user.passager
      @bookings = Booking.where(passager_id: current_user.passager.id)
    else
      @bookings = Booking.where(offre_id: current_user.conducteur.offre.id)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.passager_id = current_user.id
    @booking.offre_id = params[:offre_id]
    if @booking.save
      redirect_to bookings_path, notice: 'Votre réservation a bien été créée'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
