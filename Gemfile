source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'webpacker'
gem 'bcrypt', '~> 3.1.7'
gem 'active_model_serializers'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails', '= 0.3.4'
  gem 'pry', '~> 0.10', require: false
  gem 'pry-doc', require: false
  gem 'rspec-rails', '~> 3.6'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  gem 'factory_bot_rails', '~> 4.7'
  gem 'faker'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard'
  gem 'guard-rspec', require: false
end

group :test do

  gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
end
