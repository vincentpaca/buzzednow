class Photo < ActiveRecord::Base
  attr_accessible :item_id, :public, :item

  belongs_to :item
end
