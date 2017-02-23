class PagesController < ApplicationController
  def home
    @products = Product.all.limit(3)
  end
end
