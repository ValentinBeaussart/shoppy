class ProductListsController < ApplicationController
  def take
    @product_list = ProductList.find(params[:product_list_id])
    @list = List.find(params[:list_id])
    if @product_list.taken?
      @product_list.update_attribute(:taken, false)
    else
      @product_list.update_attribute(:taken, true)
    end
    redirect_to list_path(@list)
  end

  def create
    @list = List.find(params[:list_id])
    @product_list = ProductList.new(product_params)
    @product_list.list = @list
    if @product_list.save
      redirect_to list_path(@list)
    else
      flash[:alert] = "Votre produit n'a pas été sauvegardé"
    end
  end

  def destroy
    @product_list = ProductList.find(params[:id])
    @list = List.find(params[:list_id])
    @product_list.destroy
    redirect_to list_path(@list)
  end

  private

  def product_params
    params.require(:product_list).permit(:quantity, :unity, :product_id)
  end
end
