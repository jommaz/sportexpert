require 'sinatra'
require 'bundler/setup'
require 'sinatra/activerecord'
require 'rack-flash'
require './models.rb'
enable :sessions
use Rack::Flash, :sweep => true
set :sessions => true
set :database, 'sqlite3:se.sqlite3'
get '/' do
	erb :home
end