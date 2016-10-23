set :application, "coalcashop"
set :repo_url, "https://github.com/niccolosanarico/coalcashop.git"
# set :branch, "master"
set :scm, :git

set :format, :pretty
set :log_level, :debug

# how many old releases do we want to keep
set :keep_releases, 5


set :puma_bind, "unix:///tmp/coalcashop.socket"
set :puma_threads, [0, 16]
set :puma_workers, 2
set :puma_rackup, -> { File.join(current_path, 'config.ru') }
set :puma_state, -> { "#{shared_path}/tmp/pids/puma.state" }
set :puma_pid, -> { "#{shared_path}/tmp/pids/puma.pid"}
set :puma_access_log, -> { "#{shared_path}/log/puma_error.log" }
set :puma_error_log, -> { "#{shared_path}/log/puma_access.log" }
set :puma_role, :app
#set :puma_env, fetch(:rack_env, fetch(:rails_env, 'staging'))
set :puma_init_active_record, true
set :puma_preload_app, true
