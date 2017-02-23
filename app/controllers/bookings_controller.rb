class BookingsController < ApplicationController
  # before_action :authenticate_user!
  # skip_before_action :authenticate_user!, only: :index

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render product_path(bookings_params[:product])
    end

  end

  def bookings_params
    params.require(:booking).permit(:status, :start_date, :end_date, :product_id)
  end
end
