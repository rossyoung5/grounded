require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'erb'

get '/' do
  erb :form
end

post '/response' do
  greeting = params[:greeting]
  parental_yell = "What do you MEAN, '#{greeting.upcase}??!!?? YOU'RE GROUNDED"
  erb :response, :locals => { yelling:parental_yell }
end