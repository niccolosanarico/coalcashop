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
set :rails_env, :staging
set :unicorn_binary, "unicorn_rails"
set :unicorn_config, "#{current_path}/config/unicorn.rb"
set :unicorn_pid, "/tmp/unicorn.coalcashop.pid"

set :linked_files, %w{config/database.yml}

# Unicorn setup
namespace :unicorn do
  desc "Zero-downtime restart of Unicorn"

  task :start do
    on roles (:app) do
      within "#{current_path}" do
        execute :bundle, :exec, "#{fetch(:unicorn_binary)} -c #{fetch(:unicorn_config)} -E #{fetch(:rails_env)} -D"
      end
    end
  end
  task :stop do
    on roles (:app) do
      execute "kill `cat #{fetch(:unicorn_pid)}`"
    end
  end
  task :graceful_stop do
    on roles (:app) do
      execute "kill -s QUIT `cat #{fetch(:unicorn_pid)}`"
    end
  end
  task :reload do
    on roles (:app) do
      execute "kill -s USR2 `cat #{fetch(:unicorn_pid)}`"
    end
  end
  task :restart do
    on roles (:app) do
      stop
      start
    end
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

before "deploy:finished", "images:symlink"
#before "deploy:finished", "unicorn:stop"
after "deploy:finished", "unicorn:start"
