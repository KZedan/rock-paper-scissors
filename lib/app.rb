require 'sinatra'
require 'shotgun'
require_relative "score_decider"

class RockPaperScissors < Sinatra::Base
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/entries' do
    $score = ScoreDecider.new(params[:player_1_move], params[:player_2_move])
    redirect '/score'
  end

  get '/score' do
    @score = $score.decider
    erb :details
  end


  run! if app_file == $0
end
