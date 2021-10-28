require 'sinatra/base'
require 'sinatra/reloader'

class BattleApp < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

$points1 = 100
$points2 = 100

  get '/' do
    # 'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    session['name_1'] = params[:player1_name]
    session['name_2'] = params[:player2_name]
    redirect to '/play'
  end

  get '/play' do

    @name1 = session['name_1']
    @name2 = session['name_2']



    erb(:play)
  end

get '/hit_points' do
  @points1 = $points1
  @points2 = $points2
  erb(:hit_points)
end

  post '

  run! if app_file == $0
end