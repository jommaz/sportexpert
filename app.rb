require 'sinatra'
require 'bundler/setup'
require 'sinatra/activerecord'
require 'rack-flash'
require './models.rb'

enable :sessions
use Rack::Flash, :sweep => true
set :sessions => true
set :database, 'sqlite3:se.sqlite3'
# Paperclip.options[:command_path] = "/Program\ Files/ImageMagick-6.9.1-Q16/convert/"

helpers do
  def current_user
    session[:user_id].nil? ? nil : User.find(session[:user_id])
 end
  def display_one
    "1"
  end
end

get '/' do
	if session[:user_id] = current_user
		redirect to('/homefeed')
	end
	erb :home
end

post '/signup' do
	new_user = User.create(:username=>params[:username], :email=>params[:email], :password=>params[:password])
	session[:user_id] = new_user.id
	new_profile = Profile.create(user_id: new_user.id)
	flash[:notice] = "New Account created"
	redirect to '/homefeed'
end

post '/signin' do
	my_user = User.find_by(username: params[:username])
	if my_user and my_user.password == params[:password]
		flash[:notice] = "Sign-in successful"
		session[:user_id] = my_user.id
		redirect to('/homefeed')
	else
		flash[:alert] = "Sorry, username or password are incorrect"
		redirect to('/')
	end
end

get '/homefeed' do
	my_user = User.find_by(id: session[:user_id])
	my_profile = my_user.profile
	erb :homefeed
end

get '/logout' do
	session[:user_id] = nil
	flash[:alert] = "You have logged out!"
	redirect to('/')
end

get '/login' do
	erb :signinpage
end

post '/profile' do
	@profile = Profile.find_by(user_id: session[:user_id])
	@profile = Profile.update(:bio=>params[:bio], :favorite=>params[:favorite], location: params[:location])
	redirect to('/homefeed')
end