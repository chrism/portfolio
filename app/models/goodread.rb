class Goodread < ActiveRecord::Base
  def self.update_from_feed(feed)
    Feedzirra::Feed.add_common_feed_entry_element('book_id', :as => :book_id)
    Feedzirra::Feed.add_common_feed_entry_element('author_name', :as => :author_name)
    Feedzirra::Feed.add_common_feed_entry_element('book_description', :as => :book_description)
    Feedzirra::Feed.add_common_feed_entry_element('book_small_image_url', :as => :book_small_image_url)
    Feedzirra::Feed.add_common_feed_entry_element('book_medium_image_url', :as => :book_medium_image_url)
    Feedzirra::Feed.add_common_feed_entry_element('book_large_image_url', :as => :book_large_image_url)
    feed = Feedzirra::Feed.fetch_and_parse(feed)
    add_entries(feed.entries)
  end
  
  private
  
  def self.add_entries(entries)
    entries.each do |entry|
      unless exists? :title => entry.title
        create!(
          :title        => entry.title.strip!,
          :author_name  => entry.author_name,
          :description  => entry.book_description,
          :url          => entry.url.strip!,
          :pub_at        => entry.published,
          :book_id      => entry.book_id,
          :book_small_image_url => entry.book_small_image_url.strip!,
          :book_medium_image_url => entry.book_medium_image_url.strip!,
          :book_large_image_url => entry.book_large_image_url.strip!
        )
      end
    end
  end
end
