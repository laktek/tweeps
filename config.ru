require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'

Sinatra::Application.default_options.merge!(
    :run => false,
    :env => :production,
    :views => '/home/laktek/tweeps.hackruby.com/views'
    )

require 'knowurtweeps.rb'
run Sinatra.application
