set :stage, :staging

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

role :web, "coalcashop-test.cloudapp.net"
role :app, "coalcashop-test.cloudapp.net"
role :db,  "csdb.cloudapp.net"

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

#server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value
server 'coalcashop-test.cloudapp.net', user: 'coalca', roles: %w{web app}
server 'csdb.cloudapp.net', user: 'coalca', roles: %w{db}


# User with no sudo permission
set :user, "coalca"
set :use_sudo, false
set :deploy_to, "/home/coalca/coalcashop"
#default_run_options[:shell] = '/bin/bash --login'
#default_environment["RAILS_ENV"] = 'staging'


set :linked_files, %w{config/database.yml}

# Unicorn setup
namespace :unicorn do
  desc "Zero-downtime restart of Unicorn"
  task :restart do
    run "kill -s USR2 `cat /tmp/unicorn.coalcashop.pid`"
  end

  desc "Start unicorn"
  task :start do
    run "cd #{current_path} ; bundle exec unicorn_rails -c config/unicorn.rb -E staging -D"
  end

  desc "Stop unicorn"
  task :stop do
    run "kill -s QUIT `cat /tmp/unicorn.coalcashop.pid`"
  end
end

namespace :images do
  desc "Prepare assets symlink"
  task :symlink do
    on roles :app do
      execute :rm, "-rf #{release_path}/public/spree"
      execute :ln, "-nfs #{shared_path}/coalca #{release_path}/public/spree"
    end
  end
end

after "deploy:updated", "images:symlink"

after "deploy:restart", "unicorn:restart"
