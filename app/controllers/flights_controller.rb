class FlightsController < ApplicationController
  def index
    if params[:flight].present?
      p = allowed_flights_params
      @flights = Flight.where(departure_airport_id: p[:departure_airport_id], arrival_airport_id: p[:arrival_airport_id], departure: p[:departure]..)
      @total_passengers = params[:flight][:passengers].to_i
    end
  end

  private

  def allowed_flights_params
    params.expect(flight: [ :departure_airport_id, :arrival_airport_id, :passengers, :departure ])
  end
end
