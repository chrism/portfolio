task :cron => :environment do
  puts "Pulling new pinboard bookmarks..."
  Pinboard.update_from_feed("http://feeds.pinboard.in/rss/u:chrismasters/")
  puts "done pinboard."
  puts "Pulling new instapaper bookmarks..."
  Instapaper.update_from_feed("http://www.instapaper.com/folder/921432/rss/864125/xFsbXEChScCvrSWE3QNnDQVrVw")
  puts "done instapaper."
end