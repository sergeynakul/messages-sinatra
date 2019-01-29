require "sinatra"
require "sinatra/reloader" if development?
require 'sinatra/activerecord'

get '/' do
  @title = 'Home'
  #@messages = Message.all
  erb :index
end