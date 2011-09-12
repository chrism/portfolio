class Tweet < ActiveRecord::Base
  def self.recent_tweet
    tweet = Twitter.user_timeline("chrisdmasters").first
    add_tweet(tweet)
  end
  
  private
  
  def self.add_tweet(tweet)
      unless exists? :pub_at => tweet.created_at
        create!(
          :message      => tweet.text,
          :pub_at       => tweet.created_at
        )
      end
  end
end
