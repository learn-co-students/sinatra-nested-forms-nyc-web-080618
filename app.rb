require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    # code other routes/actions here
    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = params[:pirate]
      #binding.pry
      erb :"pirates/show"
    end

  end
end
