require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "./models.rb"
require "./scheduler.rb"

get '/' do
  @messages = Message.all
  erb :index
end

get "/messages/:id" do
  @message = Message.find(params[:id])
  erb :show
end

get '/new' do
  erb :new
end

post '/post' do
  @message = Message.create(body: params[:body], destruction: params[:destruction])
  redirect '/'
end