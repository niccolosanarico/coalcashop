threads 1, 8
workers 2
preload_app!

environment ENV["RAILS_ENV"] || "production"

# daemonize

#stdout_redirect '/u/apps/lolcat/log/stdout', '/u/apps/lolcat/log/stderr'
#stdout_redirect '/u/apps/lolcat/log/stdout', '/u/apps/lolcat/log/stderr', true

bind 'unix:///tmp/coalcashop.socket'

on_worker_boot do
  require "active_record"
  cwd = File.dirname(__FILE__)+"/.."
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"] || YAML.load_file("#{cwd}/config/database.yml")[ENV["RAILS_ENV"]])
end
