source "https://rubygems.org"

gem "rails", "3.2.8"
gem "jquery-rails"
gem "haml"
gem "dalli"
gem "simple_form"
gem "sqlite3"

group :assets do
  gem "sass-rails",   "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "uglifier", ">= 1.0.3"
  gem "bootstrap-sass", "~> 2.1.0.0"
  gem "font-awesome-sass-rails"
end

group :test do
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "capybara"
end

group :test, :development do
  gem "sqlite3"
  gem "capistrano", "2.9.0"
  gem "rspec-rails", "~> 2.4"
  gem "factory_girl_rails"
end

group :production do
  gem "mysql2"#, "0.3.7"
  gem "execjs"
  gem "therubyracer"
end


