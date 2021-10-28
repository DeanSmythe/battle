require 'sinatra/base'
require 'sinatra/reloader'

class BattleApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
     'Testing infrastructure working!'
    # erb(:start)
  end

    run! if app_file == $0
end