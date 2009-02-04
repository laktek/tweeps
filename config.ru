require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'

Sinatra::Application.default_options.merge!(
    :run => false,
    :env => :production
    )

require 'knowurtweeps.rb'
run Sinatra.application
