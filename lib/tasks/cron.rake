task :cron => :environment do
  puts "Pulling new pinboard bookmarks..."
  Pinboard.update_from_feed("http://feeds.pinboard.in/rss/u:chrismasters/")
  puts "done pinboard."
end