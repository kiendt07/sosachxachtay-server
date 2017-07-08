class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def show
    @product = Product.find_by id: params[:id]
  end
  
  def create
    @product = Product.new product_params
    @product.save
  end

  private

  def product_params
    params.require(:product).permit(:name, :attr1, :attr2, :category_id, :photo_url)
  end
end
