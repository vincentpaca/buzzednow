class Item < ActiveRecord::Base
  attr_accessible :name, :price

  has_many :photos

  def primary_photo
    self.photos.first
  end

  class << self
    def new_arrivals
      Item.where("created_at > ?", 3.days.ago).limit(3)
    end

    def popular_picks
      Item.where("created_at < ?", 3.days.ago).limit(8)
    end
  end
end
