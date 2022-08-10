require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require "better_errors"
require_relative "config/application"

# THIS IS OUR CONTROLLER + ROUTER

get "/" do
  @restaurants = Restaurant.all

  erb :index
end

get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])

  erb :show
end

# HOW DOES THE INTERNET WORK????
# CLIENT: a computer with a browser
  # Sending a HTTP request to the server
# SERVER: a computer host a website
  # Send back a response: HTML + CSS + JNG + JS + JSON

# GET - receving information
# POST - sending information
# PATCH - updation info
# DELETE - deleting stuff
