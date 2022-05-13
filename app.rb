require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/birthday'
  end

  get '/birthday' do
    @name = session[:name]
    erb :birthday
  end

  run! if app_file == $0
end
