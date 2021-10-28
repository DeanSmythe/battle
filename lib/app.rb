require 'sinatra/base'
require 'sinatra/reloader'

class BattleApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
     # 'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    @name1= params[:player1_name]
    @name2= params[:player2_name]
    erb(:play)
  end

    run! if app_file == $0
end