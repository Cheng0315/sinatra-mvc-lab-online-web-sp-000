require_relative 'config/environment'
require_relative 'moels/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end
end
