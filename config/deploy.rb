set :application, "coalcashop"
set :repo_url, "https://github.com/niccolosanarico/coalcashop.git"
set :branch, "master"
set :scm, :git

# how many old releases do we want to keep
set :keep_releases, 5

set :puma_init_active_record, true
set :puma_bind, "unix:///tmp/coalcashop.socket"
set :puma_workers, 2
set :puma_access_log, "#{current_path}/log/puma_error.log"
set :puma_error_log, "#{current_path}/log/puma_access.log"
