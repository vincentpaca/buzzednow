class ItemsController < ApplicationController
  def index
    @items = Item.includes(:photos)
  end

  def show
    @item = Item.find(params[:id]).includes(:photos)
    @images = @item.photos
  end
end
