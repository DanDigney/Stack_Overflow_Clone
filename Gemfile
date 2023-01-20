source 'https://rubygems.org'

gem 'sinatra', '~> 2.0'
gem 'sinatra-contrib', '~> 2.0'

gem 'pg', '~> 1.1.0'
gem 'activerecord', '~> 7.0.4'
gem 'activesupport', '~> 7.0.4'

gem 'rake', '~> 12.3.0'
gem 'shotgun', '~> 0.9.2'

gem 'bcrypt', '~> 3.1'


group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec', '~> 3.0'
  gem 'capybara'
end

group :test, :development do
  gem 'factory_girl'
  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
  gem 'pry-byebug'
end
