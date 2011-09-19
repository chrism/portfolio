class AddPositionToProjectimage < ActiveRecord::Migration
  def change
    add_column :projectimages, :position, :integer
  end
end
