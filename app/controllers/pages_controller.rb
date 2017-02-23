class PagesController < ApplicationController
  def home
    @products = Product.all.limit(6)
  end
end
