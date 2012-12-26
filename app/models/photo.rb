class Photo < ActiveRecord::Base
  attr_accessible :item_id, :public, :item

  belongs_to :item

  mount_uploader :public, PhotoUploader
  process_in_background :public
end
