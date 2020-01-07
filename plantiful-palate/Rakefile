ENV["SINATRA_ENV"] ||= "development"

require 'dotenv/load'
require_relative './config/environment'
require 'sinatra/activerecord/rake'

task :console do
    Pry.start
end