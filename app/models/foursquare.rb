class Foursquare < ActiveRecord::Base
  def self.update_from_feed(feed_url)   
    Feedzirra::Feed.add_common_feed_entry_element('georss:point', :as => :geo)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries)
  end
  
  private
  
  def self.add_entries(entries)
    entries.each do |entry|
      unless exists? :guid => entry.entry_id
        create!(
          :title        => entry.title,
          :description      => entry.summary,
          :url          => entry.url,
          :pub_at        => entry.published,
          :guid         => entry.entry_id,
          :lat          => entry.geo.split(' ')[0],
          :long         => entry.geo.split(' ')[1],
        )
      end
    end
  end
end
