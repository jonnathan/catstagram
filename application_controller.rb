require 'bundler'
Bundler.require
require_relative 'models/catstagram.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end
  
  post '/result' do
    user_string = params[:input_string]
    @result=meow(user_string)
    erb :result
  end
  
  

end