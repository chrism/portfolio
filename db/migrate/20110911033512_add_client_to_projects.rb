class AddClientToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :client, :string
  end
end
