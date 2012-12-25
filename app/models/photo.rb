class Photo < ActiveRecord::Base
  attr_accessible :item_id, :public

  belongs_to :item
end
