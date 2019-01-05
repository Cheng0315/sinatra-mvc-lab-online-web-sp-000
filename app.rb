require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post "/" do
    @phrase = PigLatinizer.new
    @latinize_phrase = phrase.piglatinize(params[:user_phrase])
  end
end
