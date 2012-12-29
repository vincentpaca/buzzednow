class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @images = @item.photos
  end
end
