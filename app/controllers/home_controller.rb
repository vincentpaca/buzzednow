class HomeController < ApplicationController
  def index
    @new_arrivals = Item.new_arrivals
    @popular_picks = Item.popular_picks
  end
end
