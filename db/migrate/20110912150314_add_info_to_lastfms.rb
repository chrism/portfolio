class AddInfoToLastfms < ActiveRecord::Migration
  def change
    add_column :lastfms, :artist, :string
    add_column :lastfms, :name, :string
    add_column :lastfms, :url, :string
    add_column :lastfms, :album, :string
    add_column :lastfms, :played_at, :date
    add_column :lastfms, :image_url, :string
  end
end
