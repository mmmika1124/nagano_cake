class Public::ItemsController < ApplicationController
  
  def index
    @genres = Genre.all
    @items = Item.all.page(params[:page]).per(8)
    @all_items = Item.all
  end

  def show
    @genres = Genre.all
    @item = Item.find(params[:id])
    @customer = current_customer
    @cart_item = CartItem.new
  end

  private

  def item_params
    params.require(:item).permit(:genre_id, :name, :image, :introduction, :price, :is_active)
  end

end

