source 'https://rubygems.org'


ruby '2.4.0'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

gem 'devise', '~> 4.2', '>= 4.2.1'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'carrierwave', '~> 1.0'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'
gem 'simple_form', '~> 3.4'
gem 'dotenv-rails', '~> 2.2'
gem 'mini_magick', '~> 4.7'
gem 'carrierwave-aws', '~> 1.1'
gem 'cancancan', '~> 1.16'
gem 'friendly_id', '~> 5.2', '>= 5.2.1'
gem 'cocoon', '~> 1.2', '>= 1.2.9'
gem 'faker', '~> 1.7', '>= 1.7.3'
gem 'cancancan', '~> 1.16'
gem 'selectize-rails', '~> 0.12.4'
gem "jquery-slick-rails"
gem 'social-share-button'
gem 'gravatarify', '~> 3.0.0'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'acts_as_votable'