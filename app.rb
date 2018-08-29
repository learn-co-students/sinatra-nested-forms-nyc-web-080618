require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      @pirate = Pirate.new(params['pirate']['name'],params['pirate']['height'],params['pirate']['weight'])
      params[:pirate][:ships].each do |ship_details|
        #binding.pry
        Ship.new(ship_details["name"],ship_details["type"],ship_details['booty'])
      end
      @ships = Ship.all


      erb :'pirates/show'
    end


  end
end
