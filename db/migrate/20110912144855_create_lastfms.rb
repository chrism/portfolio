class CreateLastfms < ActiveRecord::Migration
  def change
    create_table :lastfms do |t|

      t.timestamps
    end
  end
end
