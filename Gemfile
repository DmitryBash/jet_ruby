source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'awesome_print'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1'
  gem 'capybara', '~> 2.13'
  gem 'capybara-email'
  gem 'capybara-webkit'
  gem 'rails-controller-testing'
  gem 'launchy'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'bootstrap-sass'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'devise'
gem 'carrierwave'
gem 'mini_magick'
gem 'whenever', :require => false
gem 'cancancan', '~> 2.0'
gem 'active_model_serializers', '~> 0.10.6'
gem 'jwt'
gem 'rails-observers'
gem 'sidekiq'
gem 'omniauth-google-oauth2'
