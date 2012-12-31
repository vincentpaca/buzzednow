class FixUsersCategory < ActiveRecord::Migration
  def change
    rename_column :items, :category_id, :sub_category_id
  end
end
