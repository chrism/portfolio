class AddMainimageToProjectimages < ActiveRecord::Migration
  def change
    add_column :projectimages, :mainimage, :boolean
  end
end
