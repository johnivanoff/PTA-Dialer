source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :test do
	gem 'sqlite3'
end
group :production do
	gem 'pg'
end

gem 'sorcery'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
	gem 'sqlite3'
  	gem 'turn', :require => false
	gem 'cucumber-rails', '1.1.0' 
	gem 'rspec-rails', '2.6.1' 
	gem 'database_cleaner', '0.6.7' 
	gem 'factory_girl', '2.1.2'
	gem 'launchy'
end
