set :stage, :production

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

# role :web, "coalcashop.cloudapp.net"
# role :app, "coalcashop.cloudapp.net"
# role :db, "coalcashop.cloudapp.net"
#role :db,  "csdb.cloudapp.net"

role :web, "40.68.212.192"
role :app, "40.68.212.192"
role :db, "40.68.212.192"


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

#server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value
server '40.68.212.192', user: 'coalca', roles: %w{web app db}
# server 'coalcashop.cloudapp.net', user: 'coalca', roles: %w{web app db}
#server 'csdb.cloudapp.net', user: 'coalca', roles: %w{db}


# User with no sudo permission
set :user, "coalca"
set :use_sudo, false
set :deploy_to, "/home/coalca/coalcashop"

set :rails_env, :production

set :linked_files, %w{ config/database.yml config/application.yml config/newrelic.yml }
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :branch,        :master

namespace :images do
  desc "Prepare assets symlink"
  task :symlink do
    on roles :app do
      execute :rm, "-rf #{release_path}/public/spree"
      execute :ln, "-nfs #{shared_path}/coalca #{release_path}/public/spree"
    end
  end
end

task :refresh_sitemaps do
  on roles :app do
    within release_path do
       with rails_env: fetch(:rails_env) do
        execute :rake, "sitemap:refresh"
      end
    end
  end
end


before "deploy:finished", "images:symlink"
after "deploy:finished", "puma:restart"
after "deploy", "refresh_sitemaps"
