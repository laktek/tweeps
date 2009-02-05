load 'deploy' if respond_to?(:namespace) # cap2 differentiator

default_run_options[:pty] = true

# be sure to change these
set :user, 'lakshan'
set :domain, 'tweeps.hackruby.com'
set :port, 30000
set :application, 'tweeps'

# the rest should be good
set :repository,  "/home/#{user}/repos/#{application}.git" 
set :deploy_to, "/home/#{user}/apps/#{application}" 
set :deploy_via, :remote_cache
set :local_repository,   "#{File.dirname(__FILE__)}"
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web

namespace :deploy do
task :restart do
run "touch #{current_path}/tmp/restart.txt" 
end
end
