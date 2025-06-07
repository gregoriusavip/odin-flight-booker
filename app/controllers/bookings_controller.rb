class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @flight_id = params[:flight_id].to_i
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flights << Flight.find(params[:flight_id])
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.all
  end

  private

  def booking_params
    params.expect(booking: [ passengers_attributes: [ [ :name, :email ] ] ])
  end
end
