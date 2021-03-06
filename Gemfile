source 'https://rubygems.org'
ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Project core stuff
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.1'

# Assets
gem 'bootstrap-sass', '~> 3.3.6'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'sass-rails', '~> 5.0'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

# Authentication & Authorization
gem 'devise', github: 'plataformatec/devise'
gem 'pundit', '~> 1.1.0'

# Profiling
gem 'rack-mini-profiler', require: false

# For memory profiling (requires Ruby MRI 2.1+)
gem 'memory_profiler'

# For call-stack profiling flamegraphs (requires Ruby MRI 2.0.0+)
gem 'fast_stack'    # For Ruby MRI 2.0
gem 'flamegraph'
gem 'stackprof'     # For Ruby MRI 2.1+

gem 'paper_trail'

group :test do
  gem 'capybara', '~> 2.11.0'
  gem 'capybara-email', '~> 2.5.0'
  gem 'capybara-screenshot', '~> 1.0.14'
  gem 'database_cleaner', '~> 1.6.1'
  gem 'fuubar'
  gem 'poltergeist', '~> 1.12.0'
  gem 'rspec-rails', '~> 3.6.0'
  gem 'shoulda-matchers', '~> 2.8'
  gem 'spring-commands-rspec', '~> 1.0.4'
end

group :development, :test do
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'launchy'
end

group :development do
  gem 'devise-specs'
  gem 'hew', github: 'andrii/hew'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'switch_user'
  gem 'web-console', '>= 3.3.0'

  # Code quality
  gem 'rails_best_practices', require: false
  gem 'rubocop', require: false
  gem 'rubycritic', require: false

  # Security
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
end

gem 'tzinfo-data'
