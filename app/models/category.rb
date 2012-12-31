class Category < ActiveRecord::Base
  attr_accessible :name
  
  has_many :sub_categories

  def items
    self.sub_categories.collect { |c| c.items.includes(:photos) }.flatten
  end
end
