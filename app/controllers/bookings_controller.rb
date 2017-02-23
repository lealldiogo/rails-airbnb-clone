class BookingsController < ApplicationController
  # before_action :authenticate_user!
  # skip_before_action :authenticate_user!, only: :index

  # After everything is working, a way to make the app more organized would be to create a before action.
  # This would force the user to sign in before checking the products and bookings

  def index
    if user_signed_in?
      @bookings = current_user.bookings
    else
      redirect_to new_user_session_path
    end
  end

  def show
    if user_signed_in?
      @booking = Booking.find(params[:id])
    else
      redirect_to new_user_session_path
    end
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
