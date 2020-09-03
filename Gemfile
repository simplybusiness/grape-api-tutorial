# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '2.6.5'

gem 'grape', '1.3.0'
gem 'mongoid'
gem 'rack'
gem 'dotenv'

group :development do
  gem 'rake'
  gem 'rb-fsevent'
  gem 'rerun'
  gem 'rubocop'
end

group :test do
  gem 'database_cleaner-mongoid'
  gem 'pry'
  gem 'rack-test'
  gem 'rspec'
end
