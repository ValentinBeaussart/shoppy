class ListsController < ApplicationController
  def index
    @lists = List.where(user: current_user)
  end

  def show
    @list = List.find(params[:id])
    @product_lists = @list.product_lists.order(created_at: :desc)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    redirect_to list_path(@list) if @list.save
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
