class BookingsController < ApplicationController
  # before_action :authenticate_user!
  # skip_before_action :authenticate_user!, only: :index

  def index
    @bookings = Booking.all
    @user = current_user
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)

    if @booking.save
      redirect_to user_bookings
    else
      render new_user_booking_path
    end

  end

  def bookings_params
    params.require(:bookings).permit(:status)
  end
end
