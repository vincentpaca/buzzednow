class Reservation < ActiveRecord::Base
  attr_accessible :contact_number, :item_id, :user_id

  belongs_to :user
  belongs_to :item
end
