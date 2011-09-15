class AddUrlToGoodreads < ActiveRecord::Migration
  def change
    add_column :goodreads, :url, :string
  end
end
