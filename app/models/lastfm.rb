class Lastfm < ActiveRecord::Base
  def self.update_from_api
    user = Rockstar::User.new('chris_masters')
    add_entries(user.recent_tracks)
  end
  
  private
  
  def self.add_entries(recent_tracks)
    recent_tracks.each do |entry|
      unless exists? :played_at => entry.date
        create!(
          :name         => entry.name,
          :artist       => entry.artist,
          :url          => entry.url,
          :played_at    => entry.date,
          :album        => entry.album,
          :image_url    => entry.images["medium"],
        )
      end
    end
  end
end
