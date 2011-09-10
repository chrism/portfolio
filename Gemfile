source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for postgres (heroku)
gem 'pg'

# for navigation
gem "tabs_on_rails"

# for default styling
gem "flutie"

# for sass mixins
gem "bourbon"

# for authentication -- should change to clearance at some point?
gem "cancan"

# for rss feed parsing
gem "feedzirra"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'


group :development do
  gem 'rb-fsevent'
  gem "guard-livereload", "~> 0.3.1"
  gem "growl_notify"
end


group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
