class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Prodcut.find(params[:id])
  end

end
