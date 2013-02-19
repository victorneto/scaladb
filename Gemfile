source "https://rubygems.org"

gem "rails", "3.2.12"
gem "jquery-rails"
gem "haml"
gem "dalli"
gem "simple_form"

group :assets do
  gem "sass-rails",   "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "uglifier", ">= 1.0.3"
  gem "bootstrap-sass", "~> 2.3.0.0"
  gem "font-awesome-sass-rails"
end

group :test do
  gem "shoulda"
  gem "webmock"
  gem "email_spec", ">= 1.2.1"
  gem "cucumber-rails", ">= 1.3.0", :require => false
  gem "capybara", ">= 1.1.2"
  gem "database_cleaner", ">= 0.7.2"
  gem "launchy", ">= 2.1.0"
end

group :test, :development do
  gem "sqlite3"
  gem "capistrano", "2.9.0"
  gem "rspec-rails", ">= 2.10.1"
  gem "factory_girl_rails", ">= 3.3.0"
end

group :production do
  gem "mysql2"#, "0.3.7"
  gem "execjs"
  gem "therubyracer"
end