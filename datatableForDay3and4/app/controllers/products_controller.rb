class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    @product = Prodcut.new(product_params)

    if @product.save
      rediret_to product_path
    else
      render :new
    end

  end

  def new
    @product = Prodcut.new
  end

  def show
    @product = Prodcut.find(params[:id])
  end

end
