class Pinboard < ActiveRecord::Base
  def self.update_from_feed(feed_url)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries)
  end
  
  private
  
  def self.add_entries(entries)
    entries.each do |entry|
      unless exists? :url => entry.url
        create!(
          :title        => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :pubat        => entry.published,
        )
      end
    end
  end
end
