class ChangeDataTypeForPlayedAt < ActiveRecord::Migration
  def up
    change_table :lastfms do |t|
      t.change :played_at, :datetime
    end
  end

  def down
    change_table :lastfms do |t|
      t.change :played_at, :date
    end
  end
end
