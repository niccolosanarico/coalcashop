source 'https://rubygems.org'

ruby "2.2.5"

gem 'rails', '~> 4.2.0'
gem 'deface'
gem 'money', '~>6.5.0'

# Payments
gem 'braintree'

# Use SCSS for stylesheets
gem 'sass-rails', :branch=>'4-0-stable'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

# Decorate emails with inline style CSS
gem 'premailer-rails'

# Use jquery & angularjs as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'sqlite3'
  gem 'capistrano', '~> 3.4.0'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano3-puma'
  gem 'diffy'
end

group :development do
  gem 'web-console', '~> 2.0'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'selenium-webdriver'
  gem 'email_spec'
  gem 'cucumber-rails', :require => false
end

group :production, :staging do
    gem 'pg'
    #gem 'unicorn'
    gem 'puma'
    #gem 'foreman'
    gem 'newrelic_rpm'
    gem 'sidekiq'
end

# Managing environment variables
gem 'figaro'

# Add markdown compatibility to product descriptions
gem 'redcarpet'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# gem 'spree_mixpanel', git: 'git@github.com:marcosteixeira/spree_mixpanel.git', branch: '2-4-stable'
# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'gibbon'

# Update to Rails 4.2
gem 'responders', '~> 2.0'

gem 'spree', :github => 'spree/spree', :branch => '3-1-stable'
gem 'spree_gateway', :github => 'spree/spree_gateway', :branch => '3-1-stable'
gem 'spree_auth_devise', :github => 'spree/spree_auth_devise', :branch => '3-1-stable'
gem 'spree_i18n', :github => 'spree/spree_i18n', :branch => '3-1-stable'
gem 'spree_static_content', github: 'spree/spree_static_content', branch: '3-1-stable'
gem 'spree_print_invoice' , :git => 'git://github.com/spree/spree_print_invoice.git', branch: 'master'
gem 'spree_bank_transfer', github: 'redglory/spree_bank_transfer', :branch => '3-1-stable', require: 'spree_bank_transfer'
gem 'spree_sitemap', github: 'spree-contrib/spree_sitemap', branch: '3-1-stable'
