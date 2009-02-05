require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'

Sinatra::Application.default_options.merge!(
    :run => false,
    :env => :production,
    :views => '/home/laktek/apps/tweeps.hackruby.com/current/views'
    )

require 'knowurtweeps.rb'
run Sinatra.application
