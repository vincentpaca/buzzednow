class Item < ActiveRecord::Base
  attr_accessible :name, :price, :sub_category_id

  has_many :photos
  has_many :reservations

  belongs_to :sub_category

  def primary_photo
    self.photos.first
  end

  class << self
    def new_arrivals
      Item.where("created_at > ?", 3.days.ago).order("CREATED_AT DESC").limit(3)
    end

    def popular_picks
      Item.where("created_at < ?", 3.days.ago).limit(12).order("RANDOM()")
    end
  end
end
