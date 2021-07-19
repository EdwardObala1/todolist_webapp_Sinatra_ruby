ENV['RACK_ENV'] ||= 'staging'
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

configure :staging do
    # set :database  #pick the db you will use in staging
end

# require 'app' #set up MVC layout 