class CreateFoursquares < ActiveRecord::Migration
  def change
    create_table :foursquares do |t|
      t.string :title
      t.string :url
      t.string :description
      t.datetime :pub_at
      t.string :guid
      t.decimal :lat, :precision => 15, :scale => 10
      t.decimal :long, :precision => 15, :scale => 10

      t.timestamps
    end
  end
end
