class ProductsController < ApplicationController

  def index
    #@products = Product.all
    respond_to do |format|
      format.html
      format.json { render json: ProductDatatable.new(view_context) }
    end
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      rediret_to product_path
    else
      render :new
    end

  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

end
