class AddIndexToLecon < ActiveRecord::Migration[5.2]
  def change
  	remove_column :lecons, :cour_id
    add_reference :lecons, :cour, foreign_key: true
  end
end
