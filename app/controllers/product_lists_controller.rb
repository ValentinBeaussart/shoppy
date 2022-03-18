class ProductListsController < ApplicationController

  def take_toggle
    if self.taken == false
      self.taken = true
    else
      self.taken = false
    end
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

  private

  def product_params
    params.require(:product_list).permit(:quantity, :product_id)
  end
end
