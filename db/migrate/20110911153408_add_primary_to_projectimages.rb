class AddPrimaryToProjectimages < ActiveRecord::Migration
  def change
    add_column :projectimages, :primary, :boolean
  end
end
