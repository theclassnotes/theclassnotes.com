source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'mysql2'
gem 'jquery-rails'
gem 'json'
gem 'devise'
gem 'cancan'
gem 'paperclip', '~> 2.8'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', '~> 0.10.2', :platforms => :ruby
  gem 'libv8', '~> 3.3.10.2'
  gem 'compass-rails', '~> 1.0.3'
  gem 'compass-cornell-plugin', '>= 0.2.0'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'

group :test, :development do
  gem "rspec"
  gem "rspec-rails", "~> 2.0"
  gem "factory_girl", "~> 2.6"
  gem "brakeman", "~> 1.7.0"
  gem "guard-rspec"
  gem "capybara"
  case RUBY_PLATFORM
    when /darwin/
      gem "rb-fsevent"
    when /linux/
      gem "rb-inotify", "~> 0.8.8"
  end
end
