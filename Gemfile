source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~>4.1.8'
gem 'deface'
gem 'money', '~>6.5.0'

# Payments
gem 'braintree'

# Use SCSS for stylesheets
gem 'sass-rails', :branch=>'4-0-stable'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Decorate emails with inline style CSS
gem 'premailer-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery & angularjs as the JavaScript library
gem 'jquery-rails'

gem 'jquery-ui-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'sqlite3'

  gem 'capistrano', '~> 3.2.1'
  # rails specific capistrano funcitons
  gem 'capistrano-rails', '~> 1.1.0'

  # integrate bundler with capistrano
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'

  #Integrate puma with capistrano
  gem 'capistrano3-puma'

  gem 'diffy'
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
gem 'spree_mixpanel', git: 'git@github.com:marcosteixeira/spree_mixpanel.git', branch: '2-4-stable'
# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'gibbon'

gem 'spree', :github => 'spree/spree', :branch => '2-4-stable'
gem 'spree_gateway', :github => 'spree/spree_gateway', :branch => '2-4-stable'
gem 'spree_auth_devise', :github => 'spree/spree_auth_devise', :branch => '2-4-stable'
gem 'spree_i18n', :github => 'spree/spree_i18n', :branch => '2-4-stable'
gem 'spree_bootstrap_frontend', :github => '200Creative/spree_bootstrap_frontend', :branch => '2-4-stable'
gem 'spree_static_content', github: 'spree/spree_static_content', branch: '2-4-stable'
#gem 'spree_print_invoice' , :git => 'git://github.com/spree/spree_print_invoice.git', branch: '2-2-stable'
#gem 'spree-bank-transfer', require: 'spree_bank_transfer', :github => 'vinsol/spree_bank_transfer', :branch => '2-3-stable'
gem 'spree_bank_transfer', github: 'redglory/spree_bank_transfer', :branch => '2-4-stable'
