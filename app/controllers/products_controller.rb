class ProductsController < ApplicationController
  # After everything is working, a way to make the app more organized would be to create a before action.
  # This would force the user to sign in before checking the products and bookings

  def index
    if user_signed_in?
      @products = current_user.products
      @product_rentals = []
      @products.each do |prod|
        prod.bookings.each { |book| @product_rentals << prod if book.status == "negotiating" || book.status == "deal reached" || book.status == "rented"}
      end
    else
      redirect_to new_user_session_path
    end
  end

  def new
    if user_signed_in?
      @product = current_user.products.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @product = current_user.products.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'update'
    end
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
    @unavailable = []
    @product.bookings.each do |book|
      if book.status == "deal reached"
        (book.start_date..book.end_date).each { |date| @unavailable << date.strftime('%d/%m/%Y') }
      end
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def search
    # Here we would have an if routing which class.search() we want to run
    @results = Product.all.where(brand: params[:brand]).where(group: params[:group])#.where(city: params[:city])
    if @results.where('design LIKE ?', "%#{params[:design]}%").any?
      @results = @results.where('design LIKE ?', "%#{params[:design]}%")
    end

    # To be used after
    # @results = Instrument.search(params).select { |instrument| instrument.product.city == params[:city] }
  end

  private

  def product_params
   params.require(:product).permit(:price, :category, :description,:brand, :design, :group, :year, :city, :photo, :photo_cache)
  end
end
