require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'Starts our app console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end
task :start do
  exec "rerun -b 'rackup config.ru'"
end

