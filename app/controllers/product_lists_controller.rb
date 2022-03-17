class ProductListsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @product_list = ProductList.new
  end

  def create
    @list = List.find(params[:list_id])
    @product_list = ProductList.new(product_params)
    @product_list.list = @list
    redirect_to list_path(@list) if @product_list.save
  end

  private

  def product_params
    params.require(:product_list).permit(:quantity)
  end
end
