# config/unicorn.rb
# Set environment to staging unless something else is specified
env = ENV["RAILS_ENV"] || "staging"

# See http://unicorn.bogomips.org/Unicorn/Configurator.html for complete documentation.
# One worker loads an entire Rails app.
worker_processes 2

# listen on both a Unix domain socket and a TCP port,
# we use a shorter backlog for quicker failover when busy
listen "/tmp/coalcashop.socket", backlog: 2048

# Preload our app for more speed
preload_app true

# nuke workers after 30 seconds instead of 60 seconds (the default)
timeout 30

pid "/tmp/unicorn.coalcashop.pid"

# Production specific settings
if env == "staging"
  # Help ensure your application will always spawn in the symlinked
  # "current" directory that Capistrano sets up.
  working_directory "/home/coalca/coalcashop/current"

  stderr_path "/home/coalca/coalcashop/current/log/unicorn.stderr.log"
  stdout_path "/home/coalca/coalcashop/current/log/unicorn.stdout.log"

  # feel free to point this anywhere accessible on the filesystem user 'coalca'
  shared_path = "/home/coalca/coalcashop/shared"
  
  # Force the bundler gemfile environment variable to
  # reference the capistrano "current" symlink
  before_exec do |_|
    ENV["BUNDLE_GEMFILE"] = File.join(working_directory, 'Gemfile')
  end

end

before_fork do |server, worker|
  # the following is highly recomended for Rails + "preload_app true"
  # as there's no need for the master process to hold a connection
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end

  # Before forking, kill the master process that belongs to the .oldbin PID.
  # This enables 0 downtime deploys.
  old_pid = "/tmp/unicorn.coalcashop.pid.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end
end

after_fork do |server, worker|
  # the following is *required* for Rails + "preload_app true"
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end

  # if preload_app is true, then you may also want to check and
  # restart any other shared sockets/descriptors such as Memcached,
  # and Redis.  TokyoCabinet file handles are safe to reuse
  # between any number of forked children (assuming your kernel
  # correctly implements pread()/pwrite() system calls)
end
