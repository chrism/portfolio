task :cron => :environment do
  puts "Pulling new pinboard bookmarks..."
  Pinboard.update_from_feed("http://feeds.pinboard.in/rss/u:chrismasters/")
  puts "done pinboard."
  puts "Pulling new instapaper bookmarks..."
  Instapaper.update_from_feed("http://www.instapaper.com/folder/921432/rss/864125/xFsbXEChScCvrSWE3QNnDQVrVw")
  puts "done instapaper."
  puts "Pulling new last.fm details..."
  Lastfm.update_from_api
  puts "done last.fm."
  puts "Pulling recent tweet..."
  Tweet.recent_tweet
  puts "done tweet."
  puts "Pulling new foursquare locations..."
  Foursquare.update_from_feed("https://feeds.foursquare.com/history/HFH0DKDVXSHEZQFPUL3RZNNUQDLYNI0T.rss")
  puts "done foursquare."
  puts "Pulling latest book reading..."
  Goodread.update_from_feed("http://www.goodreads.com/review/list_rss/6315267?key=8f734a88c346267878d195ad29be5d6951bfffc7&shelf=currently-reading")
  puts "done goodread."
end