class AddShortnameToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :shortname, :string
  end
end
