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
server 'coalcashop-test.cloudapp.net', user: 'coalca', roles: %w{web app db}
server 'csdb.cloudapp.net', user: 'coalca', roles: %w{web app db}


# User with no sudo permission
set :user, "coalca"
set :use_sudo, false
set :deploy_to, "/home/coalca/coalcashop"
#default_run_options[:shell] = '/bin/bash --login'
#default_environment["RAILS_ENV"] = 'staging'


set :linked_files, %w{config/database.yml  config/application.yml}

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
