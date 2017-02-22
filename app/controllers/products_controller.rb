class ProductsController < ApplicationController

  def index
    if current_user.nil?
      redirect_to new_user_session_path
    else
      @products = current_user.products
    end
  end

  def new
    @product = current_user.products.new
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
      rendr 'update'
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
