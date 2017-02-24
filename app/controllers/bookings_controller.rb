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
      @days = (@booking.end_date - @booking.start_date).to_i
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.start_date = Date.strptime(booking_params[:start_date], '%d/%m/%Y')
    @booking.end_date = Date.strptime(booking_params[:end_date], '%d/%m/%Y')
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      product = Product.find(booking_params[:product_id])
      redirect_to product_path(product)
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      if current_user == @booking.user
        redirect_to bookings_path
      else
        redirect_to products_path
      end
    else
      render 'update'
    end
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :product_id)
  end
end
