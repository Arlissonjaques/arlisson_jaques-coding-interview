source 'https://rubygems.org'

# NOTE: 2.7.x is the last version compatible with Rails 5.
# https://www.fastruby.io/blog/ruby/rails/versions/compatibility-table.html
ruby '2.7.6'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.6'
gem 'sqlite3', '~> 1.4.4'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 5.0.2'
  gem 'faker'
  gem 'rspec-rails', '~> 4.0.0'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
