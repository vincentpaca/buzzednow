class Photo < ActiveRecord::Base
  attr_accessible :item_id, :public_id

  belongs_to :item
end
