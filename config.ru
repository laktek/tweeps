require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'

Sinatra::Application.default_options.merge!(
    :run => false,
    :env => :production,
    :views => '/home/lakshan/apps/tweeps/current/views'
    )

require 'knowurtweeps.rb'
run Sinatra.application
