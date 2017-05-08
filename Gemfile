source 'https://rubygems.org'

# This is the minimum of dependency required to run
# the trusty-cms instance generator, which is (normally)
# the only time the trusty gem functions as an
# application. The instance has its own Gemfile, which
# requires radiant and therefore pulls in every
# dependency mentioned in radiant.gemspec.

gem 'trustygems', '~> 0.2.0'

gemspec

group :development, :test do
  gem 'thin',             '~> 1.6.2'
  gem 'pry',              '~> 0.10.0'
  gem 'capybara',         '~> 2.13.0'
  gem 'rspec-rails'
  gem 'launchy',          '~> 2.4.2'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'poltergeist',      '~> 1.5.1'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'rails-observers', :git => 'https://github.com/rails/rails-observers'
  gem "protected_attributes_continued"
  gem "pry-byebug"
end
