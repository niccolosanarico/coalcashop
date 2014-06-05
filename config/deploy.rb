require "bundler/capistrano"
require "rvm/capistrano"

set :application, "coalcashop"
set :repo_url, "https://github.com/niccolosanarico/coalcashop.git"
set :branch, "master"
set :scm, :git

# how many old releases do we want to keep
set :keep_releases, 5
