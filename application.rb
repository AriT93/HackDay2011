require 'rubygems'
require 'sinatra'
require 'environment'


configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

helpers do
  # add your helpers here
end

# root page
get '/' do
  redirect '/login' unless logged_in?
  haml :root
end

get '/css/layout.css' do
  content_type 'text/css'
  sass :layout
end
