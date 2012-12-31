class ItemsController < ApplicationController
  def index
    @items = Item.includes(:photos)

    if params[:sub_category]
      @items = @items.where("sub_category_id = ?", params[:sub_category])
    end

    if params[:q]
      @items = @items.where("name ilike ?", "%#{params[:q]}%")
    end
  end

  def show
    @item = Item.includes(:photos).find(params[:id])
    @images = @item.photos
  end
end
